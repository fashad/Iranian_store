#My_File_Access
extends Node
class_name  My_File_Access


var File_WRITE = FileAccess.WRITE
var File_READ = FileAccess.READ

func File_openAcces(ver_1 ,ver_2):
	return  FileAccess.open(ver_1,ver_2)

func File_Open_exists(ver):
	return FileAccess.file_exists(ver)

