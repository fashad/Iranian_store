#UI_End_SER
extends Node2D

var G_Addras = Public_Class.G_Book_Adddras_Servicees
var G_Class = Public_Class.G_Services


func _ready():
	G_Addras.queue_free()
	G_Class.queue_free()
	Public_Class.change_scene(Public_Addras.UI_Start_WAB)
	
	
