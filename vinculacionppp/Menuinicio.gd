extends Control

func _ready():
	Audio.get_node("musicaFondo").stream=load("res://sound/musica-instrumental-para-ninos-felices.ogg")
	Audio.get_node("musicaFondo").play()
func _on_Buttoninicionio_pressed():
	get_tree().change_scene("res://escenas/niñoFrente.tscn")


func _on_Buttoninicionia_pressed():
	get_tree().change_scene("res://escenas/secundaria.tscn")
