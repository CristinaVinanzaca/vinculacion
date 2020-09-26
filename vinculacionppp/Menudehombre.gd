extends Control
onready var btncabeza=get_node("cabeza")
onready var btnhuesos=get_node("cabeza/OrganosHombres/Esqueletohombre")
onready var btnorganos=get_node("cabeza/OrganosHombres")
onready var botn=get_node("Button")
func _ready():
	btncabeza.connect("pressed",self,"_llamarCabeza")
	btnhuesos.connect("pressed",self,"_llamarHuesos")
	btnorganos.connect("pressed",self,"_llamarOrganos")
	botn.connect("pressed",self,"_on_Button_pressed")

func _on_Button_pressed():
	get_tree().change_scene("res://escenas/niñoFrente.tscn")
func _llamarCabeza():
	get_tree().change_scene("res://escenas/niñoCabeza.tscn")
func _llamarHuesos():
	get_tree().change_scene("res://escenas/niñohuesos.tscn")
func _llamarOrganos():
	get_tree().change_scene("res://escenas/niñoOrganos.tscn")
