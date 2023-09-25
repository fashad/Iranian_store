#UI_4_Toush , UI_Toush
extends Node2D

var G_Class = Public_Class.G_Book
var UI_Launchers 
var Default_time = 2
var Time_Toush = 0
enum I_CLICK_STATUS {View_Next_back_menu ,View2_time_3 ,Stop}
var i_state 

#var sss :int = 0

func _ready():
	UI_Launchers = get_tree().current_scene
#	print("sdsdsd ")
	i_state = I_CLICK_STATUS.View_Next_back_menu
	$View_Next_back_menu.visible = true
	$Toush_Time_3.visible = false
	
func _input(_event):
	Click_Check(_event)
	

func Click_Check(event):
	if event is InputEventScreenTouch:	
#		if G_Class.i_state == G_Class.I_FOEM_STATUS.Show_Form_true:
#			G_Erorr_Excepttrans.new().Show_print(G_Addras.Class_UI_4_Toush , G_Class.i_state,G_Erorr_Excepttrans.new().Toush)
			if i_state == I_CLICK_STATUS.View_Next_back_menu:#-------------/
				if 570 >= int(get_global_mouse_position().y):
					if event.is_pressed():# One Click
						Click_just_pressed()
					else:# Two Click
						Clickis_released()
						pass

# One Click
func Click_just_pressed():
		get_node("Timer").start()


func Clickis_released():
	Time_Toush = 0
	get_node("Timer").stop()
	


func _on_Timer_timeout():
	if G_Class.i_state == G_Class.I_FOEM_STATUS.Show_Form_true:
		Time_Toush += 1
		if Time_Toush > Default_time:
			$Toush_Time_3.visible = true
			$View_Next_back_menu.visible = false
			Time_Toush = 0
			i_state = I_CLICK_STATUS.View2_time_3
			get_node("Timer").stop()
			$Toush_Time_3._ready()
			G_Class.i_show_Animation = false
#			$View2_time_3/Color_tools.Back_to_Zero()
