#My_Account_Load
extends Node2D



func _ready():
	var i_name ="My_Account"
	var i_addrs = Sarsh_Addass(i_name) +"/" + i_name +Public_Addras.tres
	var my_File_ok =load(Public_Addras.File_Tite).new()
	var sss = my_File_ok.Load_Array(i_addrs)
	$i_name.text =str(sss[0][2])
	$i_gmail.text =str(sss[0][1])
	$i_upzar.text =str(sss[0][3])
 

func Sarsh_Addass(ver):
	var Search_Folder = load(Public_Addras.Search_Folder).new()
	var i_dir = Search_Folder.get_name_folder(ver)
	return i_dir
	

