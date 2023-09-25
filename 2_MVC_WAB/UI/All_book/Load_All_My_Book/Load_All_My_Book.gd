#Load_All_My_Book
# نمایش همه کتاب های دنلود شده درب برنامه
extends Node2D

var G_Addras = Public_Class.G_Book_Addras_Store
var G_Class = Public_Class.G_Store
var UI_Launchers 
var No_off = false
var next_step :int = 0
var Marking :int = 0
var i_barak_list :int = 3
var i_All_book :Array
var i_All_objact :Array


func _ready():
	UI_Launchers = get_parent().get_parent()
	var making_objects = load(G_Addras.Making_objects_in_the_book).new()
	G_Class.pack_book_addras = making_objects.Making_objects()
	Perfuse_Next()
#	for  i in G_Class.pack_book_addras:
#		i.Show_data()
#	G_Class.pack_book_addras[0].Show_data()

func Perfuse_Next():
	G_Erorr_Excepttrans.new().Show_print("book_shelf ",str("load All... ",G_Class.pack_book_addras.size()))
	del_list()
	set_Array_2D()
	list_Show()



func set_Array_2D():
	i_All_book.clear()
	var cont_ok = 0
	for i in G_Class.pack_book_addras.size():
		var  array_2 = Array()
		for j in i_barak_list:
			if cont_ok < G_Class.pack_book_addras.size():
				array_2.append(G_Class.pack_book_addras[cont_ok])
			else:
				break
			cont_ok +=1
		i_All_book.append(array_2)
		if cont_ok == G_Class.pack_book_addras.size():
			break
	
	
func list_Show():
	for i in i_All_book.size():
		var UI_list_book = load(G_Addras.List_Item_My_Book) 
		var i_UI_list_book = UI_list_book.instantiate()
		i_UI_list_book.get_book(i_All_book[i])
		i_All_objact.append(i_UI_list_book)
		$s/v.add_child(i_UI_list_book)
#	print("sss ",i_All_book[0][0].i_adrass)
#	print("sss ",G_Class.pack_book_addras[0].i_adrass)
#	print("sss ",G_Class.pack_book_addras[0].i_save_tite)

	
func del_list():
	for  i in i_All_objact:
		i.queue_free()
	i_All_objact.clear()

func selection_book():
	UI_Launchers.go_to_tscn(G_Addras.UI_End_WAB)
 
