extends Button

func _on_Button_pressed():
	Globals.dificultad = 1.0
	get_tree().change_scene("res://1ºpantalla.tscn")
