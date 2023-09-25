#My_Dir_Access.gd
extends Node
class_name  My_Dir_Access

var All_folder:Array 
var All_files:Array 


func Dir_openAccess(ver):
	return DirAccess.open(ver)

func Dir_rename(ver_1 ,ver_2):
	var dir_1 = Dir_openAccess(ver_1)
	dir_1.rename(dir_1 ,ver_2)
	
func Dir_Make(ver_1 ,ver_2):
	var dir = Dir_openAccess(ver_1)
	dir.make_dir(ver_2)
	
func Dir_Remove_Folder(ver):
	var dir = Dir_openAccess(ver)
	return dir.remove(ver)
	
func Dir_Remove_Felie(ver_1 ,ver_2):
	var dir = Dir_openAccess(ver_1)
	return dir.remove(ver_2)

func get_All_file():
	return All_files
	
func get_All_folder():
	return All_folder

