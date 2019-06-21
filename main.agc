
// Project: Adventure 
// Created: 2019-06-14

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Adventure" )
SetWindowSize( 1024, 720, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 720 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

#include "candy.agc"
#insert "gambar.agc"
//insert "sound.agc"

sx =0
sy = 450
aa = 4
ab = 0
nilai = 0
hidup = 1

SetSpriteAnimation ( 1, 106, 174, 6 )

SetSpriteVisible ( 1, 0 )
PlaySprite ( 1, 10, 1, 1, 6 )	


CreateText(1,"Nilai : ")
SetTextPosition(1, 5,0)
SetTextSize(1,30)
SetTextColor(1,0,0,0,255)

CreateText(2,"0")
SetTextPosition(2, GetTextTotalWidth(1) + 5 ,0)
SetTextSize(2,30)
SetTextColor(2,0,0,0,255)

CreateText(3, "Tekan Enter Untuk Main Lagi")

//setspritephysicsimpulse(spr,getspritexbyoffset(spr),getspriteybyoffset(spr),ix#,iy#)
do

	if (hidup = 1)
		Gosub permen
		   
		if ( GetJoystickX() > 0.0 )
			SetSpriteFlip(1,0,0)
			SetSpriteFlip(2,0,0)
			SetSpriteVisible ( 1, 1 )
			SetSpriteVisible ( 2, 0 )
			
		elseif ( GetJoystickX() < 0.0 )
			SetSpriteFlip(1,1,0)
			SetSpriteFlip(2,1,0)
			SetSpriteVisible ( 1, 1 )
			SetSpriteVisible ( 2, 0 )
				
		else
			SetSpriteVisible ( 1, 0 )
			SetSpriteVisible ( 2, 1 )

		endif
			
		SetSpritePosition(1,sx,sy)
		SetSpritePosition(2,sx,sy)

		
		sx = sx + GetJoystickX() * 12
		//sy = sy + GetJoystickY() * 8
		
		if(sx > GetDeviceWidth()-(GetSpriteWidth(1)/2))
			sx = GetDeviceWidth()-(GetSpriteWidth(1)/2)
		endif
		
		if(sx < 0)
			sx = 0
		endif
			
	else
		SetSpriteVisible ( 7, 1 )
		SetSpritePosition(7, (GetDeviceWidth()-GetImageWidth(7))/2, (GetDeviceHeight()-GetImageHeight(7))/2)
		SetTextPosition(3, (GetDeviceWidth()-GetTextTotalWidth(3))/2, (GetDeviceHeight()+GetImageHeight(7))/2)
		SetTextSize(3,30)
		SetTextColor(3,0,0,0,255)
		SetTextVisible (3 , 1)
		
		if ( GetRawKeyPressed(13) = 1 )
			SetSpriteVisible ( 7, 0 )
			SetTextVisible (3 , 0)
			hidup = 1
			nilai = 0
			SetTextString(2,Str(nilai))
		endif
		
		
	endif
		
	Sync()
loop
