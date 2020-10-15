extends Control

func _ready():
	Audio.get_node("musicaFondo").stream=load("res://sound/musica-instrumental-para-ninos-felices.ogg")
	
func _on_Buttoninicionio_pressed():
	get_tree().change_scene("res://Menudehombre.tscn")


func _on_Buttoninicionia_pressed():
	get_tree().change_scene("res://Menudeopciones.tscn")
