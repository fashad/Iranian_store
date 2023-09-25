#Search_Folder
extends Node

var G_Addras = Public_Addras
var Ail_Folder =[] 

func get_All_Folder():
	Ail_Folder.clear()
	var Search_Folder_File = load(G_Addras.Search_Folder_File).new()
	Search_Folder_File.Show_File_List()
	Ail_Folder.append_array(Search_Folder_File.get_All_folder())
#	print(iii.get_All_file())
	return Ail_Folder
	
#پیداا کردن نام گقتته شده
func get_name_folder(ver:String):
	var i_name  ="null"
	get_All_Folder()
	for  i in Ail_Folder:
		var i_sql=[]
		i_sql.append_array(i.split("/"))
		var j_name = i_sql.pop_back()
		if ver == j_name:
			i_name = i
	return i_name
 
##همه فولدر با این نام  بر می گرداند
#"New folder"
func get_name_folder_list(ver):
	var i_name = []
#	print("ff ",get_All_Folder())
	for  i in get_All_Folder():
		if ver in i:
			i_name.append(i)
	return i_name
 
#"All_Book"
func Show_dir_list(ver):

	var i_name = []
	var one = false
	for  i in get_All_Folder():
		var cc = i.split("/")
		for j in cc:
			if ver == j:
				if one:
					i_name.append(i)
				one =  true
	return i_name

