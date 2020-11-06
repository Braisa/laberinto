extends Node2D

var Bloque = preload("Bloque.tscn")
var Area = preload("Area.tscn")

func crear_nuevo_bloque(x, y):
	print("Creando bloque en", x, ", ", y)
	var nuevo_bloque = Area.instance()
	nuevo_bloque.position.x = x
	nuevo_bloque.position.y = y
	add_child(nuevo_bloque)
	

func _ready():
	for x in range(0, 1280, 16):
		for y in range(0, 720, 16):
			crear_nuevo_bloque(x, y)
		
	#while posY < 720:#ProjectSettings.get_setting("display/window/size/height"):
		#print(posY)
		#posX = 0
		#while posX < 1280:#ProjectSettings.get_setting("display/window/size/width"):
		#	posX += 16
		#	crear_nuevo_bloque(posX, posY)
		#posY += 16

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(Engine.get_frames_per_second())
