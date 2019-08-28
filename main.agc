
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
hidup = 0

SetSpriteAnimation ( 1, 106, 174, 6 )

SetSpriteVisible ( 1, 0 )
PlaySprite ( 1, 10, 1, 1, 6 )	


CreateText(1,"Nilai : ")
SetTextPosition(1, 5,0)
SetTextSize(1,30)
SetTextColor(1,0,0,0,255)
SetTextVisible (1 , 0)

CreateText(2,"0")
SetTextPosition(2, GetTextTotalWidth(1) + 5 ,0)
SetTextSize(2,30)
SetTextColor(2,0,0,0,255)
SetTextVisible (2 , 0)

CreateText(3, "Tekan Enter Untuk Main Lagi")

//Play button
AddVirtualButton(1,0,0,0)
SetVirtualButtonAlpha(1,1)
SetVirtualButtonColor(1,255,255,0)
//SetVirtualButtonImageDown(1,9)
//SetVirtualButtonImageUp(1,9)
SetVirtualButtonPosition(1,375, 250)
SetVirtualButtonSize(1,250, 100)
//SetVirtualButtonText(1,"PLAY")
SetVirtualButtonVisible(1,1)

//Quit Button
AddVirtualButton(2,0,0,0)
SetVirtualButtonAlpha(2,0)
SetVirtualButtonColor(2,255,255,0)
//SetVirtualButtonImageDown(2,9)
//SetVirtualButtonImageUp(2,9)
SetVirtualButtonPosition(2,375, 360)
SetVirtualButtonSize(2,250, 100)
//SetVirtualButtonText(2,"Quit")
SetVirtualButtonVisible(2,1)

do
	
	if GetVirtualButtonPressed(1)=1
		SetSpriteVisible ( 8, 0 )
		SetSpriteVisible ( 9, 0 )
		SetSpriteVisible ( 11, 0 )
		
		SetVirtualButtonVisible(1,0)
		SetVirtualButtonVisible(2,0)
		hidup = 1
	elseif GetVirtualButtonPressed(2)=1
		end
	endif


	if (hidup = 1)
		Gosub permen
		   
		SetTextVisible (1 , 1)
		SetTextVisible (2 , 1)
		
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
			
	elseif(hidup=2)
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
	else
		//Menampilkan menu utama sebelum bermain
		
		
	endif
		
	Sync()
loop
DeleteVirtualButton(1)
DeleteVirtualButton(2)

