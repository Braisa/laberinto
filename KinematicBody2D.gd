extends KinematicBody2D

export (int) var speed = 150

var velocity = Vector2()
var collision

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed('right'):
		velocity.x += 1
	if Input.is_action_pressed('left'):
		velocity.x -= 1
	if Input.is_action_pressed('down'):
		velocity.y += 1
	if Input.is_action_pressed('up'):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	var collision = move_and_collide(velocity * delta)
	if collision:
		if collision.collider.get_collision_layer() == 8:
			get_parent().cambiar_nivel(1)
		elif collision.collider.get_collision_layer() == 64:
			get_tree().change_scene("res://Victoria.tscn")
		elif collision.collider.get_collision_layer() == 32:
			position.x = 500
			position.y = 200
		elif collision.collider.get_collision_layer() == 512:
			position.x = 838
			position.y = 450
		else:
			position.x = 10
			position.y = 10
			Globals.vidas -= 1
			if Globals.vidas <= 0:
				get_tree().change_scene("res://Muerte.tscn")

func _ready():
	Globals.vidas = 3
	get_node("ColorRect").color = Color(0, 0, 1, 1)
	get_node("ColorRect").rect_size = Vector2(20, 20)
	get_node("CollisionShape2D").set_scale(Vector2(1.0, 1.0))
	get_node("CollisionShape2D").position.x = 10
	get_node("CollisionShape2D").position.y = 10
