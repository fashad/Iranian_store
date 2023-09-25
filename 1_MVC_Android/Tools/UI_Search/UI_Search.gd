#UI_1_5_search
extends Node2D

var G_Class = Public_Class.G_Book
var UI_Launchers 
var text_PersianText =""

func _ready():
#	UI_Launchers = get_tree().current_scene
	UI_Launchers = get_parent()
 
 

#Show_search
func i_Form_Show(Meun_No_off):
	if Meun_No_off:
		get_node("AnimationPlayer").play("New_On")
		date_show()
	else:
		get_node("AnimationPlayer").play("New_Off")
		finsh()

 
func date_show():
	if 0 < G_Class.i_search.size():
		for i in G_Class.i_search:
			text_PersianText = text_PersianText+ " "+i
		$Control/LineEdit.text = str(text_PersianText)
		

func text_ok():
	G_Class.i_search.clear()
	text_PersianText = $Control/LineEdit.text
	var Word = text_PersianText.split(" ")
	G_Class.i_search.append_array(Word)
	UI_Launchers.UI_2_Show_Page().Perfuse_Update()
	i_Form_Show(false)
#	print(text_PersianText)

func finsh():
	await get_tree().create_timer(1.0).timeout
	G_Class.i_state = G_Class.I_FOEM_STATUS.Show_Form_true#-------------/
	queue_free()



func _on_texture_button_pressed():
	text_ok()


func _on_texture_button_2_pressed():
	G_Class.i_search.clear()
	UI_Launchers.UI_2_Show_Page().Perfuse_Update()
	i_Form_Show(false)
