#UI_Launchers_And
extends Node2D
 
var G_Addras = Public_Class.G_And_Addras


#UI_1_Page_Border
func UI_1_Page_Border():
	return get_node("UI_Page_BackGrand")

#UI_2_Show_Page
func UI_2_Show_Page():
	return get_node("UI_Show_Page")

#UI_2_Menu
func UI_3_Menu():
	return get_node("UI_Menu")

#UI_3_Toush
func UI_4_Toush():
	return get_node("UI_Toush")

#end_UI_Launchers_And
func end_UI_Launchers_And():
#	G_Class.change_scene(G_Addras.UI_Launchers_wab ,name)
	Public_Class.change_scene(G_Addras.UI_Launchers_wab)
