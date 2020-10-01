extends Node2D
onready var frente = get_node("cabeza/frente")
onready var cejas = get_node("cabeza/cejas")
onready var ojos= get_node("cabeza/ojos")
onready var nariz = get_node("cabeza/nariz")
onready var mejillas = get_node("cabeza/mejillas")
onready var mejillas2 = get_node("cabeza/mejillas2")
onready var boca = get_node("cabeza/boca")
func _ready():
	frente.connect("pressed",self,"_frente1")
	cejas.connect("pressed",self,"_cejas1")
	ojos.connect("pressed",self,"_ojos1")
	nariz.connect("pressed",self,"_nariz1")
	mejillas.connect("pressed",self,"_mejillas1")
	mejillas2.connect("pressed",self,"_mejillas1")
	boca.connect("pressed",self,"_boca1")
func _cargarAudio(var nombre):
	var file="res://sound/menuInicioNiño/partes_de_la_cara_hombre/"+nombre+".ogg"
	print (file)
	if File.new().file_exists(file):
		var audio=load(file)
		get_node("audios").set_stream(audio)
		get_node("audios").play()

func _frente1():
	_cargarAudio("frente")
func _cejas1():
	_cargarAudio("cejas")
func _ojos1():
	_cargarAudio("ojos")
func _nariz1():
	_cargarAudio("nariz")
func _mejillas1():
	_cargarAudio("mejillas")
func _boca1():
	_cargarAudio("boca")


func _on_Button_pressed():
	get_tree().change_scene()
