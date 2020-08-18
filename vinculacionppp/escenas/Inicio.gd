extends Node2D
onready var btninicio=get_node("inicio")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	btninicio.connect("pressed",self,"dalePlay")
	 # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func dalePlay():
	get_tree().change_scene("res://escenas/main.tscn")
 
