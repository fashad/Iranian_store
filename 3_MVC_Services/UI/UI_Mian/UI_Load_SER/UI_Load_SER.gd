#UI_Load_SER
extends Node2D

var G_Addras = Public_Class.G_Book_Adddras_Servicees

func _ready():
	$A_2.play("play")
	await get_tree().create_timer(1.0).timeout
	set_data_My_Accont()
	set_data_Free_Book_Address()
	
 
func set_data_My_Accont():
	var Registrationa = load(G_Addras.Registrationa_Data_Save).new()
	if Registrationa.My_File_exists():
		Public_Class.change_scene(G_Addras.UI_End_SER)
	else:
		Public_Class.change_scene(G_Addras.UI_Registrationa)

func set_data_Free_Book_Address():
	var Free_Book_Address = load(G_Addras.Free_Book_Address).new()
	if Free_Book_Address.My_File_exists():
		print("yes")
#		Public_Class.change_scene(G_Addras.UI_End_SER)
	else:
		print("no")
#		Public_Class.change_scene(G_Addras.UI_Registrationa)
