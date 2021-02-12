extends Node2D
onready var ano = get_node("fondo/org/ano")
onready var estomago= get_node("fondo/org/estomago")
onready var higado= get_node("fondo/org/higado")
onready var grueso = get_node("fondo/org/igrueso")
onready var delgado = get_node("fondo/org/idelgado")
onready var traquea = get_node("fondo/org/traquea")
onready var cerebro = get_node("fondo/org/cerebro")
onready var pulmones = get_node("fondo/org/pulmones")
onready var corazon = get_node("fondo/org/corazon")
onready var rinones = get_node("fondo/org/rinones")
onready var rinones2 = get_node("fondo/org/rinones2")
func _ready():
	ano.connect("pressed",self,"_ano")
	estomago.connect("pressed",self,"_estomago")
	higado.connect("pressed",self,"_higado")
	grueso.connect("pressed",self,"_intestinog")
	delgado.connect("pressed",self,"_iDel")
	traquea.connect("pressed",self,"_traquea")
	cerebro.connect("pressed",self,"_cerebro")
	pulmones.connect("pressed",self,"_pulmones")
	corazon.connect("pressed",self,"_corazon")
	rinones.connect("pressed",self,"_rinones")
	rinones2.connect("pressed",self,"_rinones")
func _cargarAudio(var nombre):
	var file="res://sound/Sistemaniña/Sistema digestivo/"+nombre+".ogg"
	print (file)
	if File.new().file_exists(file):
		var audio=load(file)
		get_node("audios").set_stream(audio)
		get_node("audios").play()

func _ano():
	_cargarAudio("ano")
func _estomago():
	_cargarAudio("funciones/estomagomujer")
func _higado():
	_cargarAudio("funciones/higadomujer")
func _intestinog():
	_cargarAudio("funciones/igruesomujer")
func _iDel():
	_cargarAudio("funciones/idelgadomujer")
func _traquea():
	_cargarAudio("traquea")
func _cerebro():
	_cargarAudio("funciones/cerebromujer")
func _pulmones():
	_cargarAudio("funciones/pulmujer")
func _corazon():
	_cargarAudio("funciones/coramujer")
func _rinones():
	_cargarAudio("funciones/rinonesmujer")

func _on_Button_pressed():
	get_tree().change_scene("res://Menudeopciones.tscn")
