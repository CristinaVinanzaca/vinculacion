extends Control
onready var triste=get_node("triste")
onready var confundido=get_node("cofundido")
onready var feliz=get_node("feliz")
onready var enojado=get_node("enojado")
onready var asombrado=get_node("asombrado") 
onready var nino1 = get_node("niña/niñab")
onready var menu = get_node("menu")
func _ready():
	menu.connect("pressed",self,"_irMenu")
	nino1.connect("pressed",self,"_hola")
	triste.connect("pressed",self,"_triste")
	confundido.connect("pressed",self,"_confundido")
	feliz.connect("pressed",self,"_feliz")
	enojado.connect("pressed",self,"_enojado")
	asombrado.connect("pressed",self,"_asombrado")
	_hola()
func _cargarAudio(var nombre):
	var file="res://sound/emociones.ogg/"+nombre+".ogg"
	print (file)
	if File.new().file_exists(file):
		var audio=load(file)
		get_node("audios").set_stream(audio)
		get_node("audios").play()
func _triste():
	_cargarAudio("niñatriste")
func _feliz():
	_cargarAudio("niñafeliz")
func _asombrado():
	_cargarAudio("niñaasombrada")
func _confundido():
	_cargarAudio("confusionniña")
func _enojado():
	_cargarAudio("enojoniña")
func _hola():
	_cargarAudio("niñahola")
func _irMenu():
	get_tree().change_scene("res://Menudeopciones.tscn")

