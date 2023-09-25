#UI_Start_WAB
extends Node2D
var G_Addras

func _ready():
	Add_Public_Addras()
	Add_Public_Class()
	Public_Class.change_scene(G_Addras.UI_load_wab)

func  Add_Public_Addras():
	var Name_G_Addras :String = "G_Book_Addras_Store"
	var G_And_Addras = load(Public_Addras.G_Book_Addras_Store).new()
	G_And_Addras.name = Name_G_Addras
	get_node("../").add_child(G_And_Addras)
	Public_Class.G_Book_Addras_Store = get_node(str("../",Name_G_Addras))#Addras Nood G_Class
	G_Addras = Public_Class.G_Book_Addras_Store


 

func  Add_Public_Class():
	var Name_G_Class :String = "G_Store"
	var G_Class = load(G_Addras.G_Store).new()
	G_Class.name = Name_G_Class
	get_node("../").add_child(G_Class)
	Public_Class.G_Store = get_node(str("../",Name_G_Class))#Addras Nood G_Class


