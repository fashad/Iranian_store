#Setting_Data
extends Node
 
var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book
 
#var array_2d = []
var data_set =[24 ,1 ,true ,true ,G_Addras.G_Yellowing_Tl_Blue_Ft_Black]
var Addrad :String

func _init():
	Addrad = G_Class.FILE_SAVEE_SETTING

func Create_Setting():
	var array_2d = []
	for i in data_set:
		var j_array = Array()
		j_array.append(i)
		array_2d.append(j_array)
	_Save_data(array_2d)

func _Save_data(array_2d):
	var File_Tite = load(G_Addras.File_Tite).new()
	File_Tite.Save_Array(Addrad ,array_2d)


func Setting_load_ok():
	var array_j =[]
	var File_Tite = load(G_Addras.File_Tite).new()
	if File_Tite.File_Open_exists(Addrad):
		array_j = File_Tite.Load_Array(Addrad)
		set_ok(array_j)
	else :
		Create_Setting()
		array_j = File_Tite.Load_Array(Addrad)
		set_ok(array_j)

func set_ok(array_j):
	G_Class.font_size = array_j[0][0]
	G_Class.font_style = array_j[1][0]
	G_Class.Click_Left_right = array_j[2][0]
	G_Class.text_simple_Justify = array_j[3][0]
	G_Class.manager_Color =array_j[4][0]
	

func set_data_Setting():
	var array_j = []
	var File_Tite = load(G_Addras.File_Tite).new()
	array_j += File_Tite.Load_Array(Addrad)
	for  i in array_j.size():
		match  i:
			0:
				array_j[i][0] = G_Class.font_size
			1:
				array_j[i][0] = G_Class.font_style
			2:
				array_j[i][0] = G_Class.Click_Left_right
			3:
				array_j[i][0] = G_Class.text_simple_Justify
			4:
				array_j[i][0] = G_Class.manager_Color
	_Save_data(array_j)
