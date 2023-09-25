#Search_Folder_File
extends My_Dir_Access

#var All_folder:Array 
#var All_files:Array 

#var iii =OS.get_user_data_dir()
#get_files
func get_Folder_Files(path:String):
	All_folder.clear()
	var dir = Dir_openAccess(path)
	if "<Object#null>" == str(dir):
		All_files.append("Erorr Addrs")
		All_folder.append("Erorr Addrs")
#		print("Erorr Addrs")
	else :
		dir.list_dir_begin()
		var file = dir.get_next()
		while file != '':
			if !"." in file:
				All_folder += [file]
			else:
				All_files += [file]
			file = dir.get_next()

func get_Folder(ver):
#	var ver = OS.get_user_data_dir()
	delet_ok()
	get_Folder_Files(ver)
	return All_folder

func get_File():
	delet_ok()
	var ver = OS.get_user_data_dir()
	get_Folder_Files(ver)
	return All_files

func delet_ok():
	All_files.clear()
	All_folder.clear()

#Show_File_List----------------------
func Show_File_List():
	delet_ok()
	var i_os = OS.get_user_data_dir()
	get_dir_contents(i_os)
#	print(All_files)


func get_dir_contents(rootPath: String) -> Array:
	delet_ok()
	var files = []
	var directories = []
#	var dir = DirAccess.open(rootPath)
	var dir = Dir_openAccess(rootPath)
	if dir:
		dir.list_dir_begin()
		_add_dir_contents(dir, files, directories)
	else:
		push_error("An error occurred when trying to access the path.")
	return [files, directories]

func _add_dir_contents(dir: DirAccess, files: Array, directories: Array):
	var file_name = dir.get_next()

	while (file_name != ""):
		var path = dir.get_current_dir() + "/" + file_name

		if dir.current_is_dir():
#			print("Found directory: %s" % path)
			var i = dir.get_current_dir() + "/" + file_name
			var i_name =i.split("/")
			if "logs" in i_name || "shader_cache" in i_name:
				pass
			else :
				All_folder.append(i)
			var subDir = Dir_openAccess(path)
			subDir.list_dir_begin()
			directories.append(path)
			_add_dir_contents(subDir, files, directories)
		else:
#			print("Found file: %s" % path)
			var i = path
			var i_name =i.split("/")
			if "logs" in i_name || "shader_cache" in i_name:
				pass
			else :
				All_files.append(i)
			pass
		files.append(path)

		file_name = dir.get_next()

	dir.list_dir_end()
