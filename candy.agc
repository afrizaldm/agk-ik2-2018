permen:

ab = ab + 10
SetTextVisible (1 , 0)
SetTextVisible (2 , 0)

SetSpriteVisible ( 4, 0 )
SetSpriteVisible ( 5, 0 )
SetSpriteVisible ( 6, 0 )

SetSpriteSize(4,50,50)
SetSpriteSize(5,50,50)
SetSpriteSize(6,50,50)

if(ab>=550 or GetSpriteCollision(1 , aa)=1 or GetSpriteCollision(2 , aa)=1)
	
	SetSpriteVisible ( aa, 0 )
		if(GetSpriteCollision(1 , aa)=1 or GetSpriteCollision(2 , aa)=1)
		nilai = nilai + 10
		SetTextString(2,Str(nilai))
		if(aa = 6)
			//PlaySound(3)
			hidup = 2
		else
			//PlaySound(2)
		endif
	endif
	
	
	ab = 0
	ac = Random(0, 500)
	aa = Random(4, 6)
	
else
	
	SetSpriteVisible ( aa, 1 )
endif

SetSpritePosition ( aa, ac, ab )
return

