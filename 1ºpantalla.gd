extends Node2D

var Bloque = preload("Bloque.tscn")
var Area = preload("Area.tscn")
var Nivel1 = preload("Nivel1.tscn")
var Nivel2 = preload("Nivel2.tscn")
var Niveles = [Nivel1, Nivel2]
var x = 0
var y = 0

func cambiar_nivel(nuevo_nivel):
	get_node("Jugador").position.x = 10
	get_node("Jugador").position.y = 10
	add_child(Niveles[nuevo_nivel].instance())
	if nuevo_nivel > 0:
		Globals.vidas += 1
		remove_child(get_children()[-2])

func crear_nuevo_bloque(x, y):
	var nuevo_bloque = Bloque.instance()
	nuevo_bloque.position.x = x
	nuevo_bloque.position.y = y
	add_child(nuevo_bloque)
	

func _ready():
	cambiar_nivel(0)
		
	#while posY < 720:#ProjectSettings.get_setting("display/window/size/height"):
		#print(posY)
		#posX = 0
		#while posX < 1280:#ProjectSettings.get_setting("display/window/size/width"):
		#	posX += 16
		#	crear_nuevo_bloque(posX, posY)
		#posY += 16

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	#print(Engine.get_frames_per_second())
