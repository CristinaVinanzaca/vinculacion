extends Node2D

onready var voltear=get_node("voltear")
onready var cabeza=get_node("cabeza2")
onready var ojos=get_node("ojos")
onready var nariz=get_node("nariz")
onready var boca=get_node("boca")
onready var oreja1=get_node("oreja1")
onready var oreja2=get_node("oreja2")
onready var cuello=get_node("cuello")
onready var hombros=get_node("hombros")
onready var pecho=get_node("pecho")
onready var mano1=get_node("mano1")
onready var mano2=get_node("mano2")
onready var ombligo=get_node("ombligo")
onready var abdomen2=get_node("abdomen2")
onready var pIntima=get_node("pIntima")
onready var piernas=get_node("piernas")
onready var rodillas=get_node("rodillas")
onready var canilla=get_node("canilla")
onready var talon=get_node("talon")
onready var pies=get_node("pies")
onready var brazo1=get_node("brazo1")
onready var brazo2=get_node("brazo2")


func _ready():
	voltear.connect("pressed",self,"voltear")

	cabeza.connect("pressed",self,"_cabeza")
	
	ojos.connect("pressed",self,"_ojos")
	nariz.connect("pressed",self,"_nariz")
	boca.connect("pressed",self,"_boca")
	oreja1.connect("pressed",self,"_oreja")
	oreja2.connect("pressed",self,"_oreja")
	cuello.connect("pressed",self,"_cuello")
	hombros.connect("pressed",self,"_hombros")
	pecho.connect("pressed",self,"_pecho")
	mano1.connect("pressed",self,"_mano")
	mano2.connect("pressed",self,"_mano")
	ombligo.connect("pressed",self,"_ombligo")
	abdomen2.connect("pressed",self,"_abdomen")
	pIntima.connect("pressed",self,"_pIntima")
	piernas.connect("pressed",self,"_piernas")
	rodillas.connect("pressed",self,"_rodillas")
	canilla.connect("pressed",self,"_canilla")
	talon.connect("pressed",self,"_talon")
	pies.connect("pressed",self,"_pies")
	brazo1.connect("pressed",self,"_brazos")
	brazo2.connect("pressed",self,"_brazos")
	
func _cargarAudio(var nombre):
	var file="res://sound/mujer/"+nombre+".ogg"
	print (file)
	if File.new().file_exists(file):
		var audio=load(file)
		get_node("prueba").set_stream(audio)
		get_node("prueba").play()
func _cabeza():
	_cargarAudio("cabeza_mujer")
	
func _ojos():
	_cargarAudio("ojos_mujer")
func _nariz():
	_cargarAudio("nariz_mujer")
func _boca():
	_cargarAudio("boca_mujer")
func _oreja():
	_cargarAudio("oreja_mujer")
func _cuello():
	_cargarAudio("cuello_mujer")
func _hombros():
	_cargarAudio("hombros_mujer")
func _pecho():
	_cargarAudio("pecho_mujer")
func _mano():
	_cargarAudio("mano")
func _ombligo():
	_cargarAudio("ombligo_mujer")
func _abdomen():
	_cargarAudio("abdomen_mujer")
func _pIntima():
	_cargarAudio("vagina_mujer")
func _piernas():
	_cargarAudio("muslo_mujer")
func _rodillas():
	_cargarAudio("rodilla_mujer")
func _canilla():
	_cargarAudio("canilla_mujer")
func _talon():
	_cargarAudio("tobillo_mujer")
func _pies():
	_cargarAudio("pies_mujer")
func _brazos():
	_cargarAudio("brazo_mujer")
func voltear():	
	get_tree().change_scene("res://escenas/espaldaMujer.tscn")



func _on_Button_pressed():
	get_tree().change_scene("res://Menudeopciones.tscn")
