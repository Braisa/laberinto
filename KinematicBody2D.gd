extends KinematicBody2D

export (int) var speed = 200

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
		get_tree().change_scene("res://Muerte.tscn")

func _ready():
	get_node("ColorRect").color = Color(0, 0, 1, 1)
	get_node("ColorRect").rect_size = Vector2(24, 24)
	get_node("CollisionShape2D").set_scale(Vector2(1.2, 1.2))
	get_node("CollisionShape2D").position.x = 12
	get_node("CollisionShape2D").position.y = 12
