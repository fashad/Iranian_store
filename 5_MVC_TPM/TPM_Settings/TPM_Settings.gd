#TPM_Settings
extends Node2D

var UI_5_Settings = load(G_Addras.UI_Settings) 
var Setting_Data = load(G_Addras.Setting_Data).new()
var next = 0
var UI_Launchers 

func _ready():
	G_Class.i_state = G_Class.I_FOEM_STATUS.Show_Form_true
	UI_Launchers  = get_parent() 

func _on_timer_timeout():
	next += 1
	Education()
	

func Education():
	match next:
		1:
			$AnimationPlayer.play("Test_4")
			show_label(G_Addras.Education_Setting_1)
		2:
			$AnimationPlayer.play("Test_3")
			show_label(G_Addras.Education_Setting_2)
		3:
			$AnimationPlayer.play("Test_2")
			show_label(G_Addras.Education_Setting_3)
		4:
			$AnimationPlayer.play("Test_1")
			show_label(G_Addras.Education_Setting_4)
		_:
			next = 0


	
func show_label(ver):
	$Label.text = str(ver)


func _on_texture_rect_pressed():
	Setting_Data.TPM_Settings()
	Settings()
	queue_free()

func  Settings():
	if G_Class.i_state == G_Class.I_FOEM_STATUS.Show_Form_true:
		G_Class.i_state = G_Class.I_FOEM_STATUS.Show_Form_false#-------------/
		var activty = UI_5_Settings.instantiate()
		UI_Launchers.add_child(activty)
		activty.i_Form_Show(true)
