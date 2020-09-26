extends Control
onready var btncabeza=get_node("partesdecara")
onready var btnhuesos=get_node("partesdehuesos")
onready var btnorganos=get_node("partesorganos")
onready var botn=get_node("CuerpoEntero")
func _ready():
	btncabeza.connect("pressed",self,"_llamarCabeza")
	btnhuesos.connect("pressed",self,"_llamarHuesos")
	btnorganos.connect("pressed",self,"_llamarOrganos")
	botn.connect("pressed",self,"_on_CuerpoEntero_pressed")

func _llamarCabeza():
	get_tree().change_scene("res://escenas/niñacabeza.tscn")
func _llamarHuesos():
	get_tree().change_scene("res://escenas/niñaHuesos.tscn")
func _llamarOrganos():
	get_tree().change_scene("res://escenas/niñaOrganos.tscn")


func _on_CuerpoEntero_pressed():
	get_tree().change_scene("res://escenas/secundaria.tscn")
