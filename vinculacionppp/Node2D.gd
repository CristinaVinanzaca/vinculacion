extends Node2D
onready var voltear=get_node("voltear")
onready var cabeza=get_node("cabeza")
onready var nuca=get_node("nuca")
onready var hombros=get_node("hombros2")
onready var espalda=get_node("espalda")
onready var trasero=get_node("trasero")
onready var piernas=get_node("piernas")
onready var tobillo=get_node("tobillo")
onready var talon=get_node("talon")
onready var codo=get_node("codo")
onready var codo2=get_node("codo2")

func _ready():
	voltear.connect("pressed",self,"voltear")
	cabeza.connect("pressed",self,"_cabeza")
	nuca.connect("pressed",self,"_nuca")
	hombros.connect("pressed",self,"_hombros")
	espalda.connect("pressed",self,"_espalda")
	trasero.connect("pressed",self,"_trasero")
	piernas.connect("pressed",self,"_piernas")
	tobillo.connect("pressed",self,"_tobillo")
	talon.connect("pressed",self,"_talon")
	codo.connect("pressed",self,"_codos")
	codo2.connect("pressed",self,"_codos")

func _cargarAudio(var nombre):
	var file="res://sound/mujer/"+nombre+".ogg"
	print (file)
	if File.new().file_exists(file):
		var audio=load(file)
		get_node("prueba").set_stream(audio)
		get_node("prueba").play()

func _cabeza():
	_cargarAudio("cabeza_mujer")
func _nuca():
	_cargarAudio("nuca_muujer")
func _hombros():
	_cargarAudio("hombros_mujer")
func _espalda():
	_cargarAudio("espalda_mujer")
func _trasero():
	_cargarAudio("trasero_mujer")
func _piernas():
	_cargarAudio("muslo_mujer")
func _tobillo():
	_cargarAudio("tobillo_mujer")
func _talon():
	_cargarAudio("talon_mujer")
func _codos():
	_cargarAudio("codo_mujer")
	
func voltear():	
	get_tree().change_scene("res://escenas/secundaria.tscn") 
