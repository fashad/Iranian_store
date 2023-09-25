#TPM_UI_Launchers_And
extends Node2D

var Setting_Data = load(G_Addras.Setting_Data).new()

var next = 0
var UI_Launchers 

func _ready():
	G_Class.i_state = G_Class.I_FOEM_STATUS.Show_Form_true
	UI_Launchers  = get_parent() 
	
func show_msej():
	$C1.visible = false
	$C2.visible = false
	$C3.visible = false



func _on_timer_timeout():
	next += 1
	Education()
	

func Education():
	match next:
		1:
			show_msej()
			$C1.visible = true
		2:
			show_msej()
			$C2.visible = true
		3:
			show_msej()
			$C3.visible = true
		_:
			next = 0



func _on_button_pressed():
	Setting_Data.TPM_UI_Launchers()
	G_Class.change_scene(G_Addras.UI_Laod_book ,name)
