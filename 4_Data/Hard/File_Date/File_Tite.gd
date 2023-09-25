#File_Tite
extends My_File_Access
#
#var File_WRITE = FileAccess.WRITE
#var File_READ = FileAccess.READ

var G_Class
 
func  _init():
	G_Class = Public_Class.G_Book

#file_pont_save
#G_Addras.FILE_TITIE
func Save_Array(I_addrs:String ,ver:Array):
	var file = File_openAcces(I_addrs,File_WRITE)
	file.store_var(ver)
	file.close()

func Save_String(I_addrs:String ,ver:String):
	var file = File_openAcces(I_addrs,File_WRITE)
	file.store_string(ver)
	file.close()
	
func Load_Array(I_addrs:String):
	var content :Array
	if File_Open_exists(I_addrs):
		var file = File_openAcces(I_addrs ,File_READ)
		content = file.get_var()
		file.close()
	return content


func Load_String(I_addrs:String):
	var content :String
	if File_Open_exists(I_addrs):
		var file = File_openAcces(I_addrs ,File_READ)
		content = file.get_as_text()
		file.close()
	else :
		content ="null"
	return content



func Load_File(I_addrs:String = G_Class.ADDRESS_FILE_OPEN):
	var pr_Page =[]
	var i_file = I_addrs
	if  i_file=="null":
		pass
	var f = File_openAcces(i_file,File_READ)
#	var index = 1
	while not f.eof_reached():
		var line = f.get_line()
		if line :
			var Word = line.split(" ")
			pr_Page.append_array(Word)
#		index += 1
	f.close()
	return  pr_Page
	
	
	
	
