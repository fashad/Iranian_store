#Toush_Time_3
extends Node2D

var G_Class = Public_Class.G_Book


func _ready():
	get_node("Highlight_Clear").visible = false
	get_node("Highlight_Word").visible = false
	get_node("3_Share").visible = false


func Common_between_Functions():
	G_Class.i_show_Animation = true
	Show_Page_Perfuse_Update()
	get_parent().i_state = get_parent().I_CLICK_STATUS.View_Next_back_menu
	visible = false
	get_parent().get_node("View_Next_back_menu").visible = true


func _on_Button_Clear_pressed():
	get_node("Highlight_Clear").visible = true
	get_node("Highlight_Clear")._ready()


func _on_Button_Color_pressed():
	get_node("Highlight_Word").visible = true
	get_node("Highlight_Word")._ready()
	pass


func _on_Button_Share_pressed():
#	get_node("3_Share").visible = true
#	get_node("3_Share")._ready()
	pass

func _on_Button_back_pressed():
	Common_between_Functions()

 

#Show_Page_Perfuse_Update
func Show_Page_Perfuse_Update():
	get_parent().get_parent().UI_2_Show_Page().Perfuse_Update()
	pass

