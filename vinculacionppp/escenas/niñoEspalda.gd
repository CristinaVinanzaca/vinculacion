extends Node2D
onready var voltear=get_node("voltear")
onready var cabeza=get_node("cabeza")
onready var nuca=get_node("nuca")
onready var hombros=get_node("hombros")
onready var espalda=get_node("espalda")
onready var trasero=get_node("trasero")
onready var piernas=get_node("piernas")
onready var tobillo=get_node("tobillo")
onready var talon=get_node("talon")
onready var codo=get_node("codo")
onready var codo2=get_node("codo1")

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
	var file="res://sound/niño/"+nombre+".ogg"
	print (file)
	if File.new().file_exists(file):
		var audio=load(file)
		get_node("audios").set_stream(audio)
		get_node("audios").play()

func _cabeza():
	_cargarAudio("cabeza_hombre")
func _nuca():
	_cargarAudio("nuca_hombre")
func _hombros():
	_cargarAudio("hombros_hombre")
func _espalda():
	_cargarAudio("espalda_hombre")
func _trasero():
	_cargarAudio("trasero_hombre")
func _piernas():
	_cargarAudio("muslo_hombre")
func _tobillo():
	_cargarAudio("tobillo_hombre")
func _talon():
	_cargarAudio("talon_hombre")
func _codos():
	_cargarAudio("codo_hombre")
	
func voltear():	
	get_tree().change_scene("res://escenas/niñoFrente.tscn") 
