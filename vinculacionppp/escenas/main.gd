extends Node2D
onready var btnnina=get_node("mujer")
onready var btnnino=get_node("hombre")
func _ready():
	btnnina.connect("pressed",self,"llamar_mujer")
	btnnino.connect("pressed",self,"_llamarHombre")
func llamar_mujer():
	get_tree().change_scene("res://escenas/secundaria.tscn")
func _llamarHombre():
	get_tree().change_scene("res://escenas/niñoFrente.tscn")
 
