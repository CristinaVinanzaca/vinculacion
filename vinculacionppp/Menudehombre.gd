extends Control
onready var btncabeza=get_node("cabeza")
onready var btnhuesos=get_node("cabeza/OrganosHombres/Esqueletohombre")
onready var btnorganos=get_node("cabeza/OrganosHombres")
onready var botn=get_node("Button")
onready var btn2=get_node("home")
onready var cora=get_node("Sprite/corazon")
func _ready():
	btncabeza.connect("pressed",self,"_llamarCabeza")
	btnhuesos.connect("pressed",self,"_llamarHuesos")
	btnorganos.connect("pressed",self,"_llamarOrganos")
	botn.connect("pressed",self,"_on_Button_pressed")
	btn2.connect("pressed",self,"_irhouse")
	cora.connect("pressed",self,"_emociones")

func _on_Button_pressed():
	get_tree().change_scene("res://escenas/niñoFrente.tscn")
func _llamarCabeza():
	get_tree().change_scene("res://escenas/niñoCabeza.tscn")
func _llamarHuesos():
	get_tree().change_scene("res://escenas/niñohuesos.tscn")
func _llamarOrganos():
	get_tree().change_scene("res://escenas/niñoOrganos.tscn")
func _irhouse():
	get_tree().change_scene("res://Menuinicio.tscn")
func _emociones():
	get_tree().change_scene("res://emociones.tscn")
