#Data_Color_And
extends Node

var Addras :String=""
var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book


func _init():
	Addras = G_Class.FILE_SAVE_TITE
	


#file_pont_save
#G_Addras.FILE_TITIE
func file_save_Color(ver:Array):
	var file_Tite = load(G_Addras.File_Tite).new()
	file_Tite.Save_Array(Addras , ver)



#file_pont_load_ok
func  file_load_Color():
	var file_Tite = load(G_Addras.File_Tite).new()
	var content = file_Tite.Load_Array(Addras)
	return content


#File_Save_Load
func File_Save_Load():
	var arr = G_Class.Load_Painted_Ones
	var masej :String =""
	if arr.size() == 4:
		file_save_Color(arr)#File_Save---
		masej = str("seve >|:) \n " ,arr)
	else:
		masej = "seve size not 4 >| :(("
	G_Class.Load_Painted_Ones = file_load_Color()
#	G_Erorr_Excepttrans.new().Show_print(G_Addras.Class_File_Data ,str("File_Save_Load " , masej))
	G_Erorr_Excepttrans.new().Show_print("File_Data" ,str("load ok \n ",G_Class.Load_Painted_Ones ,"\n",masej) )


