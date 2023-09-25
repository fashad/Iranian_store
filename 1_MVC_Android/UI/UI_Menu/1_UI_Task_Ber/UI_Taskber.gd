#UI_9 Taskber
extends Node2D

var UI_Launchers 
var Change_variable :bool = true
var G_Class = Public_Class.G_Book

func _ready():
#	UI_Launchers = get_tree().current_scene
	UI_Launchers = get_parent().get_parent()
	show_Label_Load()
 

#HSlider
func _on_HSlider_value_changed(value):
	G_Class.contant_ok = value
	if !UI_Launchers == null && Change_variable:
		UI_Launchers.UI_2_Show_Page().Perfuse_Update()
	else:
		Change_variable = true


func show_Label_Load():
#	var ver_1 :int = G_Class.i_pr_Page_1.size() / G_Class.Word_count_and_break
	var ver_1 :int = int(G_Class.i_pr_Page_1.size()/float(G_Class.Word_count_and_break))
	var ver_2 :int = G_Class.contant_ok
	$HSlider.max_value = ver_1
	Change_variable = false
	$HSlider.value = ver_2 
	$Label_Load.text = str(ver_1 ," / ",ver_2)
   
