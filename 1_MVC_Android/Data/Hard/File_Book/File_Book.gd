#File_Book
# فرامین همه کتاب ها  کار با کلاس فایل بر عوده دارد
extends Node

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book


func Load_File():#خواندن همه کلمه های کتاب
	var File_Tite = load(G_Addras.File_Tite).new()
	return File_Tite.Load_File()


#load_The_Painted_Ones
func Load_The_Painted_Ones():
	var content
	var massj  = ""
	var addras :String = G_Class.FILE_SAVE_TITE
	var File_Tite = load(G_Addras.File_Tite).new()
	if File_Tite.File_Open_exists(addras):
		massj = str(G_Class.Load_Painted_Ones.size()," " ,G_Class.Load_Painted_Ones)
		content = File_Tite.Load_Array(addras)
		massj = str(" \n File Open FILE_SAVE_TITE |:>)) " ,addras)
	else:
		var array_2d = []
		for i in 4:
			var j_array = Array()
			array_2d.append(j_array)
		File_Tite.Save_Array(addras ,array_2d)
		content = File_Tite.Load_Array(addras)
		massj =str("\n Mark File  FILE_SAVE_TITE  ):>||   " ,addras)
	G_Erorr_Excepttrans.new().Show_print("My_File_And " ,massj)
	return content
