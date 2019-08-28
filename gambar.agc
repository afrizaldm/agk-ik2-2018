//SetJoystickScreenPosition(1,50,60)
LoadImage(3,"bg.jpg") //untuk mengambil gambar
CreateSprite(3,3) //menampilkan gambar dari loadimage berdasar index

LoadImage(1,"lari_right.png") //untuk mengambil gambar
CreateSprite(1,1) //menampilkan gambar dari loadimage berdasar index
LoadImage(2,"diam_right.png") //untuk mengambil gambar
CreateSprite(2,2) //menampilkan gambar dari loadimage berdasar index

LoadImage(4,"candy_1.png") 
CreateSprite(4,4) 
LoadImage(5,"candy_2.png") 
CreateSprite(5,5) 
LoadImage(6,"candy_3.png") 
CreateSprite(6,6) 
LoadImage(7,"gameoverlayer.png") 
CreateSprite(7,7) 
SetSpriteVisible ( 7, 0 )

LoadImage(8,"bg_1.jpg") 
CreateSprite(8,8) 
SetSpriteVisible ( 8,1 )
SetSpriteSize(8,1024, 720) 

//Gambar menu
LoadImage(9,"play.png") 
CreateSprite(9,9) 
SetSpriteSize(9,250, 100) 
SetSpritePosition(9,250,200)
//LoadImage(10,"setting.png") 
//CreateSprite(10,10) 
//SetSpriteSize(10,250, 100) 
//SetSpritePosition(10,250,310)
LoadImage(11,"quit.png") 
CreateSprite(11,11) 
SetSpriteSize(11,250, 100) 
SetSpritePosition(11,250,310)

//Untuk nilai score biar 0 di awal
SetSpritePosition(4,-500,0)
SetSpritePosition(5,-500,0)
SetSpritePosition(6,-500,0)
//SetSpriteSize(1,200,200)  //ukuran gambar berdasar sprite index

SetSpriteShape(1,3)
SetSpriteShape(2,3)
SetSpriteShape(3,3)
SetSpriteShape(4,3)
SetSpriteShape(5,3)
SetSpriteShape(6,3)
SetSpriteShape(7,3)

//SetPhysicsDebugOn ()

