#Free_Book_Address
extends Node

 
var G_Addras = Public_Class.G_Book_Adddras_Servicees

func Sarsh_Addass(ver):
	var Search_Folder = load(Public_Addras.Search_Folder).new()
	var i_dir = Search_Folder.get_name_folder(ver)
	return i_dir
	

func set_Addass():
	var j = "Free_Book_Address"
	var i_dir = Sarsh_Addass(j)
	var I_Addrass =str(i_dir ,"/",j,Public_Addras.tres)
	return I_Addrass


func My_File_exists():
	var I_Addrass = set_Addass()
	var My_File = load(Public_Addras.File_Tite).new()
	return My_File.File_Open_exists(I_Addrass)

func set_Data_My_Account(ver :Array):
	var j = "Free_Book_Address"
	var I_Addrass = Sarsh_Addass(j)
	if My_File_exists():
		var My_File = load(Public_Addras.File_Tite).new()
		My_File.Save_Array(I_Addrass ,ver)
	else:
		var My_File = load(Public_Addras.File_Tite).new()
		var crat_File =str(I_Addrass,"/",j,Public_Addras.tres)
		My_File.Save_Array(crat_File ,ver)
		
	


