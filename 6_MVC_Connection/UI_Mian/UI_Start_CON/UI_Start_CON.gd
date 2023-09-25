#UI_Start_CON
extends Node2D
var G_Addras
var G_Addras_Connection :Node
var G_Connection :Node

func _ready():
	Add_Public_Addras()
	Add_Public_Class()
	Public_Class.change_scene(G_Addras.UI_Load_CON)

func  Add_Public_Addras():
	var Name_G_Addras :String = "G_Addras_Connection"
	var G_And_Addras = load(Public_Addras.G_Addras_Connection).new()
	G_And_Addras.name = Name_G_Addras
	get_node("../").add_child(G_And_Addras)
	Public_Class.G_Addras_Connection = get_node(str("../",Name_G_Addras))#Addras Nood G_Class
	G_Addras = Public_Class.G_Addras_Connection


func  Add_Public_Class():
	var Name_G_Class :String = "G_Connection"
	var G_Class = load(G_Addras.G_Connection).new()
	G_Class.name = Name_G_Class
	get_node("../").add_child(G_Class)
	Public_Class.G_Connection = get_node(str("../",Name_G_Class))#Addras Nood G_Class
