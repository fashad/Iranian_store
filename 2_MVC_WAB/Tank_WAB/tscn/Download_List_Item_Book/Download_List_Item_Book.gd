#Download_List_Item_Book
extends Label


var G_Addras = Public_Class.G_Book_Addras_Store
var G_Class = Public_Class.G_Store
var UI_Launchers

func set_data(i):
	UI_Launchers = get_parent().get_parent().get_parent()
	text = str(G_Class.book_Iranian_management[i])
	$v/Text_but1.text = G_Class.book_Iranian_management[i]


func _on_text_but_2_pressed():
	Run_get_file()
	


func _on_text_but_1_pressed():
	Run_get_file()

func Run_get_file():
	G_Class.Download_lenk = str(get_text())
	UI_Launchers.Show_item_book()
	
