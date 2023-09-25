#UI_Start_SER
extends Node2D

var G_Addras

func _ready():
	Add_Public_Addras()
	Add_Public_Class()
	Dir_Make_Folder()
	Public_Class.change_scene(G_Addras.UI_Load_SER)

func  Add_Public_Addras():
	var Name_G_Addras :String = "G_Book_Adddras_Servicees"
	var G_And_Addras = load(Public_Addras.G_Book_Adddras_Servicees).new()
	G_And_Addras.name = Name_G_Addras
	get_node("../").add_child(G_And_Addras)
	Public_Class.G_Book_Adddras_Servicees = get_node(str("../",Name_G_Addras))#Addras Nood G_Class
	G_Addras = Public_Class.G_Book_Adddras_Servicees


func  Add_Public_Class():
	var Name_G_Class :String = "G_Services"
	var G_Class = load(G_Addras.G_Services).new()
	G_Class.name = Name_G_Class
	get_node("../").add_child(G_Class)
	Public_Class.G_Services = get_node(str("../",Name_G_Class))#Addras Nood G_Class

#ساخت فودر گفته شده
func Dir_Make_Folder():
	var My_Folder =load(Public_Addras.Dir_Foldeer).new()
	My_Folder.Start_Foldeer()
	
	
