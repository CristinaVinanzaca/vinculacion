extends Node2D
onready var ano = get_node("fondo/org/ano")
onready var estomago= get_node("fondo/org/estomago")
onready var higado= get_node("fondo/org/higado")
onready var grueso = get_node("fondo/org/igrueso")
onready var delgado = get_node("fondo/org/idelgado")
onready var traquea = get_node("fondo/org/traquea")
func _ready():
	ano.connect("pressed",self,"_ano")
	estomago.connect("pressed",self,"_estomago")
	higado.connect("pressed",self,"_higado")
	grueso.connect("pressed",self,"_intestinog")
	delgado.connect("pressed",self,"_iDel")
	traquea.connect("pressed",self,"_traquea")
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
	_cargarAudio("estomago")
func _higado():
	_cargarAudio("higado")
func _intestinog():
	_cargarAudio("intestino grueso")
func _iDel():
	_cargarAudio("intestino delgado")
func _traquea():
	_cargarAudio("traquea")
