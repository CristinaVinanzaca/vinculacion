extends Node2D

onready var cabeza=get_node("Cabeza")
onready var ojos=get_node("Ojos")
onready var orejas=get_node("Orejas")
onready var boca=get_node("Boca")
onready var manoi=get_node("ManoI")
onready var manod=get_node("ManoD")
onready var pies=get_node("Pies")
onready var piernas=get_node("Piernas")
onready var canillas=get_node("Canilla")
onready var pecho=get_node("Pecho")
onready var voltear=get_node("voltear")
var should_loop
func _ready():
	cabeza.connect("pressed",self,"cabeza_down")
	#cabeza.connect("button_up",self,"cabeza_up")
	ojos.connect("button_down",self,"ojos_down")
	ojos.connect("button_up",self,"ojos_up")
	orejas.connect("button_down",self,"orejas_down")
	orejas.connect("button_up",self,"orejas_up")
	boca.connect("button_down",self,"boca_down")
	boca.connect("button_up",self,"boca_up")
	pies.connect("button_down",self,"pies_down")
	pies.connect("button_up",self,"pies_up")
	piernas.connect("button_down",self,"piernas_down")
	piernas.connect("button_up",self,"piernas_up")
	canillas.connect("button_down",self,"canillas_down")
	canillas.connect("button_up",self,"canillas_up")
	pecho.connect("button_down",self,"pecho_down")
	pecho.connect("button_up",self,"pecho_up")
	voltear.connect("pressed",self,"voltear")



func cabeza_down():
	should_loop=true
	_on_cabeza_finished()
	
func cabeza_up():
	get_node("cabeza").stop()
func ojos_down():
	get_node("ojos").play()
func ojos_up():
	get_node("ojos").stop()
func orejas_down():
	get_node("orejas").play()
func orejas_up():
	get_node("orejas").stop()
func boca_down():
	get_node("boca").play()
func boca_up():
	get_node("boca").stop()
func manoi_down():
	get_node("manoi").play()
func manoi_up():
	get_node("manoi").stop()
func manod_down():
	get_node("manod").play()
func manod_up():
	get_node("manod").stop()
func pies_down():
	get_node("pies").play()
func pies_up():
	get_node("pies").stop()
func piernas_down():
	get_node("piernas").play()
func piernas_up():
	get_node("piernas").stop()
func canillas_down():
	get_node("canilla").play()
func canillas_up():
	get_node("canilla").stop()
func pecho_down():
	get_node("pecho").play()
func pecho_up():
	get_node("pecho").stop()
func voltear():
	get_tree().change_scene("res://escenas/espaldaMujer.tscn")
 


func _on_cabeza_finished():
	if should_loop:
		get_node("cabeza").play()
	else:
        get_node("cabeza").stop()
        queue_free()
