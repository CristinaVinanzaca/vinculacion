extends Control
onready var btncabeza=get_node("partesdecara")
onready var btnhuesos=get_node("partesdehuesos")
onready var btnorganos=get_node("partesorganos")
onready var botn=get_node("CuerpoEntero")
onready var btn2=get_node("home")
onready var cora=get_node("Sprite/cora")
func _ready():
	btncabeza.connect("pressed",self,"_llamarCabeza")
	btnhuesos.connect("pressed",self,"_llamarHuesos")
	btnorganos.connect("pressed",self,"_llamarOrganos")
	botn.connect("pressed",self,"_on_CuerpoEntero_pressed")
	btn2.connect("pressed",self,"_irhouse")
	cora.connect("pressed",self,"_emociones")
func _llamarCabeza():
	get_tree().change_scene("res://escenas/ninacabeza.tscn")
func _llamarHuesos():
	get_tree().change_scene("res://escenas/ninaHuesos.tscn")
func _llamarOrganos():
	get_tree().change_scene("res://escenas/ninaOrganos.tscn")
func _irhouse():
	get_tree().change_scene("res://Menuinicio.tscn")

func _on_CuerpoEntero_pressed():
	get_tree().change_scene("res://escenas/secundaria.tscn")
func _emociones():
	get_tree().change_scene("res://emocionesnina.tscn")
