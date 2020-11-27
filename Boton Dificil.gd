extends Button

func _on_Boton_Dificil_pressed():
	Globals.dificultad = 3.0
	get_tree().change_scene("res://1ºpantalla.tscn")
