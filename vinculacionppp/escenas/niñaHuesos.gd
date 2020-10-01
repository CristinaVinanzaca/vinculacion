extends Node2D
onready var costillas = get_node("fondo/huesos/costillas")
onready var columna= get_node("fondo/huesos/columna")
onready var humero= get_node("fondo/huesos/humero")
onready var humero2 = get_node("fondo/huesos/humero2")
onready var craneo = get_node("fondo/huesos/craneo")
onready var pelvis = get_node("fondo/huesos/pelvis")
func _ready():
	costillas.connect("pressed",self,"_costillas")
	columna.connect("pressed",self,"_columna")
	craneo.connect("pressed",self,"_craneo")
	pelvis.connect("pressed",self,"_pelvis")
	humero.connect("pressed",self,"_humero")
	humero2.connect("pressed",self,"_humero")
func _cargarAudio(var nombre):
	var file="res://sound/Sistemaniña/esqueleto/"+nombre+".ogg"
	print (file)
	if File.new().file_exists(file):
		var audio=load(file)
		get_node("audios").set_stream(audio)
		get_node("audios").play()

func _costillas():
	_cargarAudio("costillas")
func _columna():
	_cargarAudio("colunma vertebral")
func _humero():
	_cargarAudio("humero")
func _craneo():
	_cargarAudio("craneo")
func _pelvis():
	_cargarAudio("pelvis")





func _on_Button_pressed():
	get_tree().change_scene("res://Menudeopciones.tscn")
