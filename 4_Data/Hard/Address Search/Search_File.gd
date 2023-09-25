#Search_File
##جستجوی فایل گفه شدد
extends Node

var G_Addras = Public_Addras
var Ail_ّFile =[] 


func get_All_File():
	Ail_ّFile.clear()
	var Search_Folder_File = load(G_Addras.Search_Folder_File).new()
	Search_Folder_File.Show_File_List()
	Ail_ّFile.append_array(Search_Folder_File.get_All_file())
#	print(Ail_ّFile)
	return Ail_ّFile
 
func get_name_File(ver):
	var i_File = []
	get_All_File()
	for i in Ail_ّFile:
		if ver in i.get_file():
			i_File.append(i)
	return i_File
	
	
#C:/Users/farzan/AppData/Roaming/Godot/app_userdata/Iranian_store/New folder
#"user://Project_name/New folder/wee"
func get_All_File_Folder(ver :String):
	var Search_Folder_File = load(G_Addras.Search_Folder_File).new()
	Search_Folder_File.get_Folder_Files(ver)
	Ail_ّFile.append_array(Search_Folder_File.get_All_file())
	return Ail_ّFile
	

#دریافت ادرس دریافت فایل داخل ان
#C:/Users/farzan/AppData/Roaming/Godot/app_userdata/Iranian_store/my_book/All_Book/Activity
#"user://Project_name/my_book/All_Book/Activity
#Activity.tres
#save_tite.tres
func get_File_Dir(ver):
	var Search_Folder_File = load(G_Addras.Search_Folder_File).new()
	Search_Folder_File.get_Folder_Files(ver)
	return Search_Folder_File.get_All_file()
