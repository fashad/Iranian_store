#UI_Start_Book
extends Node2D

var G_Addras 


func _ready():
	Add_Public_Addras()
	Add_Public_Class()
	Public_Class.change_scene(G_Addras.UI_Laod_book)
#	if G_Class.D_TPM.D_TPM_UI_Launchers:
##		G_Class.change_scene(G_Addras.UI_TPM_Launchers_And ,name)
#		G_Class.change_scene(G_Addras.UI_TPM_Launchers_And )
#	else:
##		G_Class.change_scene(G_Addras.UI_Laod_book,name)
#		G_Class.change_scene(G_Addras.UI_Laod_book)



func  Add_Public_Addras():
	var Name_G_Addras :String = "G_Book_Addras"
	var G_And_Addras = load(Public_Addras.G_And_Addras).new()
	G_And_Addras.name = Name_G_Addras
	get_node("../").add_child(G_And_Addras)
	Public_Class.G_And_Addras = get_node(str("../",Name_G_Addras))#Addras Nood G_Class
	G_Addras = Public_Class.G_And_Addras



func  Add_Public_Class():
	var Name_G_Class :String = "G_Book"
	var G_Class = load(G_Addras.G_Book).new()
	G_Class.name = Name_G_Class
	get_node("../").add_child(G_Class)
	Public_Class.G_Book = get_node(str("../",Name_G_Class))#Addras Nood G_Class
	Book_Runner(G_Class)

func Book_Runner(G_Class):
	var i_book = Public_Class.Objack_book
#	print('cc ',i_book.i_d)
#	print('cc ',i_book.Show_data())
#	G_Class.ADDRESS_FILE_OPEN = str(i_book.i_d,"/",i_book.i_adrass )#"user://my_book/All_Book/Activity/Activity.tres" #null
#	G_Class.FILE_SAVE_TITE =str(i_book.i_d,"/",i_book.i_save_tite)#"user://my_book/All_Book/Activity/save_tite.tres" #"user://save_tite.tres"
	Test_ok(G_Class)
	G_Class.FILE_SAVEE_SETTING ="user://my_book/My_Setting/My_Setting.tres"
	var Setting_Data = load(G_Addras.Setting_Data).new()
	Setting_Data.Setting_load_ok()

func TPM_Launchers(ver):
	var i_ver= ver.instantiate()
	add_child(i_ver)

func Test_ok(G_Class):
	G_Class.ADDRESS_FILE_OPEN = "user://my_book/All_Book/Activity/Activity.tres" #null
	G_Class.FILE_SAVE_TITE ="user://my_book/All_Book/Activity/save_tite.tres" #"user://save_tite.tres"
	pass
