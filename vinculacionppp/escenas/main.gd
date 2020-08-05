extends Node2D
onready var btnnina=get_node("mujer")
func _ready():
	btnnina.connect("pressed",self,"dalePlay")
func dalePlay():
	get_tree().change_scene("res://escenas/secundaria.tscn")
 