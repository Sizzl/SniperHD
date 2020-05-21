//=============================================================================
// SniperHD
// A military redesign of the rifle with high definition scope
//
// Texture mapping can probably be improved through loops, but sometimes it's
// just good to keep it simple.
//=============================================================================
class SniperRifleHD extends Botpack.SniperRifle;

#exec TEXTURE IMPORT NAME=RetHD01 FILE=TEXTURES\Ret-1080p-01.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD02 FILE=TEXTURES\Ret-1080p-02.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD03 FILE=TEXTURES\Ret-1080p-03.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD04 FILE=TEXTURES\Ret-1080p-04.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD05 FILE=TEXTURES\Ret-1080p-05.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD06 FILE=TEXTURES\Ret-1080p-06.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD07 FILE=TEXTURES\Ret-1080p-07.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD08 FILE=TEXTURES\Ret-1080p-08.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD09 FILE=TEXTURES\Ret-1080p-09.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD10 FILE=TEXTURES\Ret-1080p-10.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD11 FILE=TEXTURES\Ret-1080p-11.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD12 FILE=TEXTURES\Ret-1080p-12.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD13 FILE=TEXTURES\Ret-1080p-13.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD14 FILE=TEXTURES\Ret-1080p-14.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD15 FILE=TEXTURES\Ret-1080p-15.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD16 FILE=TEXTURES\Ret-1080p-16.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD17 FILE=TEXTURES\Ret-1080p-17.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD18 FILE=TEXTURES\Ret-1080p-18.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD19 FILE=TEXTURES\Ret-1080p-19.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD20 FILE=TEXTURES\Ret-1080p-20.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD21 FILE=TEXTURES\Ret-1080p-21.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD22 FILE=TEXTURES\Ret-1080p-22.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD23 FILE=TEXTURES\Ret-1080p-23.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD24 FILE=TEXTURES\Ret-1080p-24.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD25 FILE=TEXTURES\Ret-1080p-25.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD26 FILE=TEXTURES\Ret-1080p-26.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD27 FILE=TEXTURES\Ret-1080p-27.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD28 FILE=TEXTURES\Ret-1080p-28.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD29 FILE=TEXTURES\Ret-1080p-29.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD30 FILE=TEXTURES\Ret-1080p-30.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD31 FILE=TEXTURES\Ret-1080p-31.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetHD32 FILE=TEXTURES\Ret-1080p-32.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2

#exec TEXTURE IMPORT NAME=RetUHD01 FILE=TEXTURES\Ret-UHD-01.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD02 FILE=TEXTURES\Ret-UHD-02.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD03 FILE=TEXTURES\Ret-UHD-03.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD04 FILE=TEXTURES\Ret-UHD-04.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD05 FILE=TEXTURES\Ret-UHD-05.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD06 FILE=TEXTURES\Ret-UHD-06.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD07 FILE=TEXTURES\Ret-UHD-07.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD08 FILE=TEXTURES\Ret-UHD-08.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD09 FILE=TEXTURES\Ret-UHD-09.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD10 FILE=TEXTURES\Ret-UHD-10.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD11 FILE=TEXTURES\Ret-UHD-11.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD12 FILE=TEXTURES\Ret-UHD-12.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD13 FILE=TEXTURES\Ret-UHD-13.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD14 FILE=TEXTURES\Ret-UHD-14.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD15 FILE=TEXTURES\Ret-UHD-15.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD16 FILE=TEXTURES\Ret-UHD-16.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD17 FILE=TEXTURES\Ret-UHD-17.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD18 FILE=TEXTURES\Ret-UHD-18.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD19 FILE=TEXTURES\Ret-UHD-19.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD20 FILE=TEXTURES\Ret-UHD-20.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD21 FILE=TEXTURES\Ret-UHD-21.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD22 FILE=TEXTURES\Ret-UHD-22.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD23 FILE=TEXTURES\Ret-UHD-23.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD24 FILE=TEXTURES\Ret-UHD-24.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD25 FILE=TEXTURES\Ret-UHD-25.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD26 FILE=TEXTURES\Ret-UHD-26.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD27 FILE=TEXTURES\Ret-UHD-27.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD28 FILE=TEXTURES\Ret-UHD-28.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD29 FILE=TEXTURES\Ret-UHD-29.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD30 FILE=TEXTURES\Ret-UHD-30.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD31 FILE=TEXTURES\Ret-UHD-31.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2
#exec TEXTURE IMPORT NAME=RetUHD32 FILE=TEXTURES\Ret-UHD-32.PCX GROUP="Icons" MIPS=OFF FLAGS=2 LODSET=2

simulated function PostRender( canvas Canvas )
{
	local PlayerPawn P;
	local float Scale;
	if (Canvas.ClipX >= 1280) {
		P = PlayerPawn(Owner);
		if ( (P != None) && (P.DesiredFOV != P.DefaultFOV) ) 
		{
			bOwnsCrossHair = true;

			// if ( Level.bHighDetailMode )
				Canvas.Style = ERenderStyle.STY_Translucent;
			// else
			//	Canvas.Style = ERenderStyle.STY_Normal;
			
			if (Canvas.ClipX > 1920) {
				Scale = Canvas.ClipX/3840; // UHD texture downscaled

				// Top 4
				Canvas.SetPos(0.5 * Canvas.ClipX - 512 * Scale, 0.5 * Canvas.ClipY - 768 * Scale );
				Canvas.DrawIcon(Texture'RetUHD01', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY - 768 * Scale );
				Canvas.DrawIcon(Texture'RetUHD02', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY - 768 * Scale );
				Canvas.DrawIcon(Texture'RetUHD03', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 256 * Scale, 0.5 * Canvas.ClipY - 768 * Scale );
				Canvas.DrawIcon(Texture'RetUHD04', Scale);

				// Second row of 6
				Canvas.SetPos(0.5 * Canvas.ClipX - 768 * Scale, 0.5 * Canvas.ClipY - 512 * Scale );
				Canvas.DrawIcon(Texture'RetUHD05', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 512 * Scale, 0.5 * Canvas.ClipY - 512 * Scale );
				Canvas.DrawIcon(Texture'RetUHD06', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY - 512 * Scale );
				Canvas.DrawIcon(Texture'RetUHD07', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY - 512 * Scale );
				Canvas.DrawIcon(Texture'RetUHD08', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 256 * Scale, 0.5 * Canvas.ClipY - 512 * Scale );
				Canvas.DrawIcon(Texture'RetUHD09', Scale);			
				Canvas.SetPos(0.5 * Canvas.ClipX + 512 * Scale, 0.5 * Canvas.ClipY - 512 * Scale );
				Canvas.DrawIcon(Texture'RetUHD10', Scale);
				
				// Third row of 6
				Canvas.SetPos(0.5 * Canvas.ClipX - 768 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD11', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 512 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD12', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD13', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD14', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 256 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD15', Scale);			
				Canvas.SetPos(0.5 * Canvas.ClipX + 512 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD16', Scale);
				
				// Fourth row of 6
				Canvas.SetPos(0.5 * Canvas.ClipX - 768 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetUHD17', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 512 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetUHD18', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetUHD19', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetUHD20', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 256 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetUHD21', Scale);			
				Canvas.SetPos(0.5 * Canvas.ClipX + 512 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetUHD22', Scale);

				// Fifth row of 6
				Canvas.SetPos(0.5 * Canvas.ClipX - 768 * Scale, 0.5 * Canvas.ClipY + 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD23', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 512 * Scale, 0.5 * Canvas.ClipY + 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD24', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY + 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD25', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY + 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD26', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 256 * Scale, 0.5 * Canvas.ClipY + 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD27', Scale);			
				Canvas.SetPos(0.5 * Canvas.ClipX + 512 * Scale, 0.5 * Canvas.ClipY + 256 * Scale );
				Canvas.DrawIcon(Texture'RetUHD28', Scale);
				
				// Final row of 4
				Canvas.SetPos(0.5 * Canvas.ClipX - 512 * Scale, 0.5 * Canvas.ClipY + 512 * Scale );
				Canvas.DrawIcon(Texture'RetUHD29', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY + 512 * Scale );
				Canvas.DrawIcon(Texture'RetUHD30', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY + 512 * Scale );
				Canvas.DrawIcon(Texture'RetUHD31', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 256 * Scale, 0.5 * Canvas.ClipY + 512 * Scale );
				Canvas.DrawIcon(Texture'RetUHD32', Scale);			

				// Canvas text
			    Canvas.SetPos(0.5 * Canvas.ClipX + 384 * Scale, 0.5 * Canvas.ClipY + 576 * Scale);
			} else {

				Scale = Canvas.ClipX/1920; // use HD texture, downscale if needed
				// Top 4
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY - 384 * Scale );
				Canvas.DrawIcon(Texture'RetHD01', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 128 * Scale, 0.5 * Canvas.ClipY - 384 * Scale );
				Canvas.DrawIcon(Texture'RetHD02', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY - 384 * Scale );
				Canvas.DrawIcon(Texture'RetHD03', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 128 * Scale, 0.5 * Canvas.ClipY - 384 * Scale );
				Canvas.DrawIcon(Texture'RetHD04', Scale);

				// Second row of 6
				Canvas.SetPos(0.5 * Canvas.ClipX - 384 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetHD05', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetHD06', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 128 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetHD07', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetHD08', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 128 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetHD09', Scale);			
				Canvas.SetPos(0.5 * Canvas.ClipX + 256 * Scale, 0.5 * Canvas.ClipY - 256 * Scale );
				Canvas.DrawIcon(Texture'RetHD10', Scale);
				
				// Third row of 6
				Canvas.SetPos(0.5 * Canvas.ClipX - 384 * Scale, 0.5 * Canvas.ClipY - 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD11', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY - 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD12', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 128 * Scale, 0.5 * Canvas.ClipY - 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD13', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY - 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD14', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 128 * Scale, 0.5 * Canvas.ClipY - 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD15', Scale);			
				Canvas.SetPos(0.5 * Canvas.ClipX + 256 * Scale, 0.5 * Canvas.ClipY - 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD16', Scale);
				
				// Fourth row of 6
				Canvas.SetPos(0.5 * Canvas.ClipX - 384 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetHD17', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetHD18', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 128 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetHD19', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetHD20', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 128 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetHD21', Scale);			
				Canvas.SetPos(0.5 * Canvas.ClipX + 256 * Scale, 0.5 * Canvas.ClipY - 0 * Scale );
				Canvas.DrawIcon(Texture'RetHD22', Scale);

				// Fifth row of 6
				Canvas.SetPos(0.5 * Canvas.ClipX - 384 * Scale, 0.5 * Canvas.ClipY + 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD23', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY + 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD24', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 128 * Scale, 0.5 * Canvas.ClipY + 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD25', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY + 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD26', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 128 * Scale, 0.5 * Canvas.ClipY + 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD27', Scale);			
				Canvas.SetPos(0.5 * Canvas.ClipX + 256 * Scale, 0.5 * Canvas.ClipY + 128 * Scale );
				Canvas.DrawIcon(Texture'RetHD28', Scale);
				
				// Final row of 4
				Canvas.SetPos(0.5 * Canvas.ClipX - 256 * Scale, 0.5 * Canvas.ClipY + 256 * Scale );
				Canvas.DrawIcon(Texture'RetHD29', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 128 * Scale, 0.5 * Canvas.ClipY + 256 * Scale );
				Canvas.DrawIcon(Texture'RetHD30', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX - 0 * Scale, 0.5 * Canvas.ClipY + 256 * Scale );
				Canvas.DrawIcon(Texture'RetHD31', Scale);
				Canvas.SetPos(0.5 * Canvas.ClipX + 128 * Scale, 0.5 * Canvas.ClipY + 256 * Scale );
				Canvas.DrawIcon(Texture'RetHD32', Scale);			

				// Canvas text
			    Canvas.SetPos(0.5 * Canvas.ClipX + 192 * Scale, 0.5 * Canvas.ClipY + 288 * Scale);
			}
			Canvas.DrawColor.R = 0;
			Canvas.DrawColor.G = 255;
			Canvas.DrawColor.B = 0;
			Scale = P.DefaultFOV/P.DesiredFOV;
			Canvas.DrawText("X"$int(Scale)$"."$int(10 * Scale - 10 * int(Scale)));
		}
		else
			bOwnsCrossHair = false;

	} else {
		Super.PostRender(Canvas);
	}

}