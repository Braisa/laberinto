extends Button

func _on_Boton_Normal_pressed():
	Globals.dificultad = 2.0
	get_tree().change_scene("res://1ºpantalla.tscn")
