extends KinematicBody2D

#var x = 32
#var y = 32

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Rect").color = Color(1, 0, 0, 1)
	get_node("Rect").rect_size = Vector2(32, 32)
	#get_node("Rect").rect_position = Vector2(100, 100)
	get_node("CollisionShape2D").set_scale(Vector2(1.6, 1.6))
	#get_node("CollisionShape2D").position.x = 16
	#get_node("CollisionShape2D").position.y = 16

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
