extends TileMap

var time = 0
var maxTime = 2

func switch():
	if get_collision_layer_bit(2):
		set_collision_layer_bit(2, false)
		hide()
		maxTime -= 0.02
	else:
		set_collision_layer_bit(2, true)
		show()
	time = 0

func _process(delta):
	time += delta
	if time >= maxTime:
		switch()
	print(maxTime)

