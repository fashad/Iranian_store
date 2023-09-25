#UI_Launchers_WAB
extends Node2D

func _ready():
	_on_book_shelf_pressed()

func Display_windows(ver :int):
	$c/Load_All_My_Book.visible = false
	$c/List_Download_All_Book.visible = false
	$c/UI_Launchers_Account.visible = false
	match  ver:
		1:
			$c/Load_All_My_Book.visible = true
		2:
			$c/List_Download_All_Book.visible = true
		3:
			$c/UI_Launchers_Account.visible = true
	pass

func go_to_tscn(ver):
	Public_Class.change_scene(ver)

func _on_book_shelf_pressed():
	Display_windows(1)
	

func _on_download_pressed():
	Display_windows(2)


func _on_but_my_account_pressed():
	Display_windows(3)


func _on_but_search_all_book_pressed():
	Display_windows(4)
