extends TileMap

var time = 0
var maxTime = 3.0 - Globals.dificultad / 3

func switch():
	if get_collision_layer_bit(2):
		set_collision_layer_bit(2, false)
		hide()
		maxTime -= Globals.dificultad / 50
	else:
		set_collision_layer_bit(2, true)
		show()
	time = 0

func _process(delta):
	time += delta
	if time >= maxTime:
		switch()
	print(maxTime)

