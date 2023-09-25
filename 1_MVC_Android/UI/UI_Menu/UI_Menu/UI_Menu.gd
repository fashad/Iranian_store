#UI_Menu
extends Node2D

var No_off = true

func _ready():
	$UI_Taskber.visible = false
	pass

func i_Form_Show(Meun_No_off):
	if Meun_No_off:
		$UI_Action_Bar.visible = true
		get_node("AnimationPlayer").play("New_On")
#		$UI_Taskber.visible = false
	else:
		get_node("AnimationPlayer").play("New_Off")


func Show_Taskber():
	$UI_Taskber.show_Label_Load()
	


