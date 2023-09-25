#List_Download_All_Book
extends Node2D

var G_Addras = Public_Class.G_Book_Addras_Store
var G_Class = Public_Class.G_Store

var UI_Launchers
var array_item =[]

func _ready():
	Public_Class.i_state = Public_Class.I_FOEM_STATUS.Show_Form_true
#	UI_Launchers = get_tree().current_scene
	UI_Launchers = get_parent().get_parent()
	delete_ok()
	Display_windows()
	Show_masaj()
	

func Display_windows():
	for i in G_Class.book_Iranian_management.size():
		var item = load(G_Addras.Download_List_Item_Book)
		var i_item = item.instantiate()
		$s/v.add_child(i_item)
		i_item.set_data(i)
		array_item.append(i_item)

func delete_ok():
	for i in array_item:
		i.queue_free()
	array_item.clear()

func  Show_masaj():
	if 0 < G_Class.book_Iranian_management.size():
		$masaj.visible = false
	else:
		$masaj.visible = true
		$masaj.text = str(G_Addras.Education_Setting_6)
		

func Show_item_book():
	print("Run  srves ",G_Addras.Download_Select_Book)
	
#	G_Class.change_scene(G_Addras.Download_Select_Book)
