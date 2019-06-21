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

SetPhysicsDebugOn ()

