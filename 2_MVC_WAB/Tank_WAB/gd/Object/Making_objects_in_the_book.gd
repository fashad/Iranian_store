#Making objects in the book
# تولید ابجکت کتاب
extends Node
 
var G_Addras = Public_Class.G_Book_Addras_Store

func Making_objects():
	var pack_book_addras =[]
	var Search_Folder = load(G_Addras.Search_Folder).new()
	var i_Search_Folder = Search_Folder.Show_dir_list("All_Book")
	for i in i_Search_Folder:
		var Save_the = load(G_Addras.Save_the_book_pack).new()
		var i_get_File  = get_File_Dir(i)
		Save_the.book_date(i,i_get_File)
		pack_book_addras.append(Save_the)
	return pack_book_addras

func get_File_Dir(ver):
	var i_arr =[]
	var Search_File = load(G_Addras.Search_File).new()
	for i in Search_File.get_File_Dir(ver):
		i_arr.append(i)
	return i_arr
	
	
