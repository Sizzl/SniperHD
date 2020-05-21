//=============================================================================
// SniperHD.
// replaces all SniperRifle objects with HD Reticle SniperRifle objects
//=============================================================================

class SniperHD expands Mutator;
var config bool bDebug;
var config bool bVerbose;
var config string WeaponName;
var string Version;
var bool bPreBPInitialized;

function PreBeginPlay()
{
  local int i;
  local Mutator M, Previous, Temp;

  if (bDebug)
  {
    Log("**** SniperHD v"$Version$" Mutator PreBeginPlay");
    if (bVerbose)
    	Log("**** And bPreBPInitialized is "$string(bPreBPInitialized));
  }
  if ( !bPreBPInitialized )
  {
    bPreBPInitialized = True;
    for (M = Level.Game.BaseMutator; M != None; M = M.NextMutator)
    {
      if (GetItemName(string(M.class)) == GetItemName(string(Self.class))) // Found Self or a copy?
      {
        Previous.NextMutator = M.NextMutator;
        if (M != Self) // This is the other version
        {
			UnLinkMessageMutator(M);
			M.Destroy();
        }
      }
      else
      {
        Previous = M;
      }
    }
    Self.NextMutator = Level.Game.BaseMutator.NextMutator; // Make a place in the List

    Level.Game.BaseMutator.NextMutator = Self; // place it 1st after BaseMutator

    if (bDebug) Log("**** Mutator "$string(Self)$" is added to the list");

    Level.Game.RegisterMessageMutator(self);

    if (bDebug && bVerbose)
    {
      LogMutatorInfo();
      Log("**** Leaving SniperHD v"$Version$" Mutator PreBeginPlay");
    }
  }
}


simulated function PostBeginPlay()
{
	local name SavedWP[50];
	local name temp;
	local bool bFoundOne, bFound;
	local int i,j,k;
	local int freespaces;


	Super.PostBeginPlay();
	if (ROLE==ROLE_SimulatedProxy)
	{
		freespaces=0;
		k=ArrayCount(class'Engine.PlayerPawn'.default.WeaponPriority);
		for (j=0;j<k;j++) SavedWP[j]=class'Engine.PlayerPawn'.default.WeaponPriority[j];

		for (i=0;i<k;i++)
		{
			if (class'Engine.PlayerPawn'.default.WeaponPriority[i]=='SniperRifleHD')
			{
				for (j=i;j<(k-1);j++) class'Engine.PlayerPawn'.default.WeaponPriority[j]=SavedWP[j+1];
				class'Engine.PlayerPawn'.default.WeaponPriority[k-1]='';
				for (j=0;j<k;j++) SavedWP[j]=class'Engine.PlayerPawn'.default.WeaponPriority[j];
				i--;
			}
			if (class'Engine.PlayerPawn'.default.WeaponPriority[i]=='')
			{
				freespaces+=1;
			}
		}
		if (k-freespaces>48) return;
		bFoundOne=false;
		for (i=0;i<k;i++)
		{
			if ((class'Engine.PlayerPawn'.default.WeaponPriority[i]=='SniperRifle')&&(class'Engine.PlayerPawn'.default.WeaponPriority[i-1]!='SniperRifleHD'))
			{
				if (!bFoundOne)
				{
					for (j=i;j<(k-1);j++)
					{
						temp=class'Engine.PlayerPawn'.default.WeaponPriority[j+1];
						class'Engine.PlayerPawn'.default.WeaponPriority[j+1]=SavedWP[j];
						if (temp=='') break;
					}
					class'Engine.PlayerPawn'.default.WeaponPriority[i]='SniperRifleHD';
					for (j=0;j<k;j++) SavedWP[j]=class'Engine.PlayerPawn'.default.WeaponPriority[j];
					bFoundOne=true;
				}
				else
				{
					for (j=i;j<(k-1);j++) class'Engine.PlayerPawn'.default.WeaponPriority[j]=SavedWP[j+1];
					for (j=0;j<k;j++) SavedWP[j]=class'Engine.PlayerPawn'.default.WeaponPriority[j];
					i--;
				}
			}
		}
		bFoundOne=false;
		class'Engine.PlayerPawn'.static.StaticSaveConfig();
	}
	else
	{
		EnforceCheck();
		settimer(4,false);
	}
}

function EnforceCheck()
{
    local actor Other;
	local byte bSuperRelevant;
    bSuperRelevant=0;
    foreach allactors(class'Actor', Other)
    {
		if (!checkReplacement(Other, bSuperRelevant)) Other.destroy();
	}
}

function LogMutatorInfo()
{
	local Mutator M;

	Log("**** Current MutatorList:");
	for (M = Level.Game.BaseMutator; M != None; M = M.NextMutator)
	{
		Log("****     "$string(M.class));
	}
	Log("**** Current DamageMutatorList:");
	for (M = Level.Game.DamageMutator; M != none; M = M.NextDamageMutator)
	{
		Log("****     "$string(M.Class));
	}
	Log("**** Current MessageMutatorList:");
	for (M = Level.Game.MessageMutator; M != none; M = M.NextMessageMutator)
	{
		Log("****     "$string(M.Class));
	}
}

function UnLinkMessageMutator(Mutator M)
{
	local bool bNotFirst; 
	local Mutator C, Previous;

	for (C = Level.Game.MessageMutator; C != none; C = C.NextMessageMutator)
	{
		if (C == M)
		{
			break;
		}
		bNotFirst = True;
		Previous = C;
	}
	if (bNotFirst)
	{
		Previous.NextMessageMutator = C.NextMessageMutator;
	}
	else
	{
		Level.Game.MessageMutator = Level.Game.MessageMutator.NextMessageMutator;
	}
}
function AddMutator(Mutator M)
{
	if (M == Self)
	{
		return; // Don't add us.
	}
	Super.AddMutator(M);  // keep the chain unbroken
}

function bool CheckReplacement(Actor Other, out byte bSuperRelevant)
{
	local bool bNoItemReplaced;
	if(Other.IsA('Weapon'))
	{
		if(Other.class==class'Botpack.SniperRifle')
		{

			ReplaceWithWeapon(Weapon(Other), WeaponName);
			return false;
		}
	}
	return Super.CheckReplacement(Other, bSuperRelevant);
}


// Modified version of the ReplaceWith function
// Replaces an inventory Other with an inventory of class aClassName and
// returns a reference to it
final function Inventory ReplaceWithWeapon(Weapon Other, coerce string aClassName)
{
	local Weapon A;
	local class<Weapon> aClass;
	local bool bAllowItemFall, bForceItemFall;
	local bool bAllowItemRotation, bForceItemRotation;
 
	if ( Other.Location == vect(0,0,0) )
		return None;
	aClass = class<Weapon>(DynamicLoadObject(aClassName, class'Class'));
	if ( aClass != None )
		A = Spawn(aClass, Other.Owner, Other.Tag,
				Other.Location + (aClass.Default.CollisionHeight - Other.CollisionHeight) * vect(0,0,1),
				Other.Rotation);
 
	if ( A != None )
	{
		if ( Other.Physics != Other.Class.Default.Physics )
		{
			if ( Other.Physics == PHYS_Falling )
				bForceItemFall = True;
			else if ( Other.Class.Default.Physics == PHYS_Falling )
				bAllowItemFall = False;
		}
		if ( (!Other.bRotatingPickup || Other.RotationRate == rot(0,0,0))
				&& (Other.Rotation.Pitch != 0 || Other.Rotation.Roll != 0) )
			bAllowItemRotation = False;
		else
			bAllowItemRotation = (Other.RotationRate != rot(0,0,0) && Other.bRotatingPickup)
					|| !Other.default.bRotatingPickup || Other.default.RotationRate == rot(0,0,0);
		bForceItemRotation = Other.RotationRate != rot(0,0,0) && Other.bRotatingPickup
				&& (!Other.default.bRotatingPickup || Other.default.RotationRate == rot(0,0,0));
 
		if ( A.Physics == PHYS_Falling && !bAllowItemFall )
			A.SetPhysics(PHYS_None);
		else if ( A.Physics != PHYS_Falling && bForceItemFall )
			A.SetPhysics(PHYS_Falling);
		A.bRotatingPickup = bAllowItemRotation && (A.bRotatingPickup || bForceItemRotation);
 
		A.Event = Other.Event;
		A.Tag = Other.Tag;
		return A;
	}
	return None;
}

// SORT THIS LATER
function bool ggReplaceWith(actor Other, string aClassName)
{
	local Actor A;
	local class<Actor> aClass;

	if ( Other.IsA('Inventory') && (Other.Location == vect(0,0,0)) )
		return false;
	aClass = class<Actor>(DynamicLoadObject(aClassName, class'Class'));
	if ( aClass != None )
		A = Spawn(aClass,Other.Owner,Other.tag,Other.Location, Other.Rotation);
	if ( Other.IsA('Inventory') )
	{
		if ( Inventory(Other).MyMarker != None )
		{
			Inventory(Other).MyMarker.markedItem = Inventory(A);
			if ( Inventory(A) != None )
			{
				Inventory(A).MyMarker = Inventory(Other).MyMarker;
				A.SetLocation(A.Location 
					+ (A.CollisionHeight - Other.CollisionHeight) * vect(0,0,1));
			}
			Inventory(Other).MyMarker = None;
		}
		else if ( A.IsA('Inventory') )
		{
			Inventory(A).bHeldItem = true;
			Inventory(A).Respawntime = 0.0;
		}
	}
	if ( A != None )
	{
		A.event = Other.event;
		A.tag = Other.tag;
		if (Other.IsA('TournamentWeapon'))
		{
			TournamentWeapon(A).bRotatingPickup = TournamentWeapon(Other).bRotatingPickup; // Fix for rotating weapons
		}
		return true;
	}
	return false;
}

function bool MutatorBroadcastLocalizedMessage(Actor Sender, Pawn Receiver, out class<LocalMessage> Message, out optional int Switch, out optional PlayerReplicationInfo RelatedPRI_1, out optional PlayerReplicationInfo RelatedPRI_2, out optional Object OptionalObject)
{

    if (OptionalObject!=None && Class<Weapon>(OptionalObject)!=None && Class<Weapon>(OptionalObject).default.ItemName ~= "Sniper Rifle")
    {
        OptionalObject = class'Botpack.SniperRifle';
    }

    return Super.MutatorBroadcastLocalizedMessage( Sender, Receiver, Message, Switch, RelatedPRI_1, RelatedPRI_2, OptionalObject );
}  

defaultproperties
{
	Version="1.00"
	bDebug=False
	bVerbose=False
	WeaponName="SniperHD.SniperRifleHD"
	bAlwaysRelevant=True
	RemoteRole=ROLE_SimulatedProxy
}