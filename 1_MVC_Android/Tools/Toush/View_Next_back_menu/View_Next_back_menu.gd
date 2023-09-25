#View_Next_back_menu_2
extends Node2D


var G_Class = Public_Class.G_Book
var Drag = true
var list_click : Array
var toush_one = Vector2.ZERO
var toush_two = Vector2.ZERO
var Meun_No_off = false

var UI_Launchers 

func _input(_event):
	Click_Check(_event)
	
	

func _ready():
#	UI_Launchers = get_tree().current_scene
	UI_Launchers = get_parent().get_parent()

func Click_Check(event):
	if G_Class.i_state == G_Class.I_FOEM_STATUS.Show_Form_true:
		if  event is InputEventScreenTouch:
			if event.is_pressed():
				toush_one = get_global_mouse_position()
				list_click.append(toush_one)
			else:
				toush_two = get_global_mouse_position()
				list_click.append(toush_two)
				if list_click.size() == 2:
					Click_the_result()# ScreenTouch click کلیک شده
				else :
					Drag_ok()#  ScreenDrag کشیدن
				list_click.clear()
				Drag = true
		if event is InputEventScreenDrag && Drag:
			toush_one = get_global_mouse_position()
			Drag = false
			list_click.append(toush_one)
		
func Click_the_result():
	if which_key() == "menu":
		_on_Menu_pressed()
	elif which_key() == "Next":
		_on_Next_pressed()
	elif which_key() == "back":
		_on_Back_pressed()
	pass
	
func which_key()-> String:
	var result :String= ""
	if  toush_one.y > 0 && toush_one.y < 72 || toush_one.y > 580 && toush_one.y < 650:
		result = "menu"
	elif toush_one.x > 0 && toush_one.x < 120 && toush_one.y > 72 && toush_one.y < 580:
		result = "Next"
	elif toush_one.x > 120 && toush_one.x < 220 && toush_one.y > 72 && toush_one.y < 580:
		result = "menu"
	elif toush_one.x > 220 && toush_one.x < 370 && toush_one.y > 72 && toush_one.y < 580:
		result = "back"
	return result
	
func Drag_ok():
	if toush_one < toush_two:
		_on_Next_pressed()
	else :
		_on_Back_pressed()
		pass


#Menu
func _on_Menu_pressed():
	if set_i_state():
#		G_Erorr_Excepttrans.new().Show_print(G_Addras.Class_UI_4_Toush ,"Menu" ,G_Erorr_Excepttrans.new().Toush)
		if Meun_No_off:
			UI_Launchers.UI_3_Menu().i_Form_Show(false)
			Meun_No_off = false
		else:
			UI_Launchers.UI_3_Menu().i_Form_Show(true)
			Meun_No_off = true
			
			
func _on_Back_pressed():
	if set_i_state():
#		G_Erorr_Excepttrans.new().Show_print(G_Addras.Class_UI_4_Toush ,"Back" ,G_Erorr_Excepttrans.new().Toush)
		if G_Class.Click_Left_right:
			UI_Launchers.UI_2_Show_Page().Perfuse_Back()#----
		else:
			UI_Launchers.UI_2_Show_Page().Perfuse_Next()
			
func set_i_state():
	var i_s = false
	if get_parent().i_state == get_parent().I_CLICK_STATUS.View_Next_back_menu && get_parent().Time_Toush < 3:
		i_s = true 
	elif get_parent().i_state == get_parent().I_CLICK_STATUS.View2_time_3:
		i_s = false
	return i_s

#on_Next_Menu_Back
func _on_Next_pressed():
	if set_i_state():
#		G_Erorr_Excepttrans.new().Show_print(G_Addras.Class_UI_4_Toush ,"Next" ,G_Erorr_Excepttrans.new().Toush)
#		UI_Launchers.UI_2_Show_Page().i_state = UI_Launchers.UI_2_Show_Page().I_ENGINE_STATUS.I_Next
		if G_Class.Click_Left_right:
			UI_Launchers.UI_2_Show_Page().Perfuse_Next()#----
		else:
			UI_Launchers.UI_2_Show_Page().Perfuse_Back()
		
