#UI_Action_Bar
extends Node2D

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book
var Meun_No_off = false

var UI_Launchers 


func _ready():
	G_Class.i_state = G_Class.I_FOEM_STATUS.Show_Form_true
#	UI_Launchers = get_tree().current_scene
	UI_Launchers = get_parent().get_parent()
 
 
#Back
func _on_Button_back_pressed():
	Public_Class.change_scene(G_Addras.UI_end_book)


func _on_Button_SettingS_pressed():
#	if G_Class.D_TPM.D_TPM_Setting:
#		print("rrr ",G_Class.D_TPM.D_TPM_Setting)
#		var UI_TPM_Settings = load(G_Addras.UI_TPM_Settings) 
#		Form_Show(UI_TPM_Settings,false)
#		pass
#	else:
		var UI_5_Settings = load(G_Addras.UI_Settings) 
		Form_Show(UI_5_Settings,true)
		pass
	
func _on_Button_serarch_pressed():
#	G_Erorr_Excepttrans.new().Show_print()
	var UI_6_search = load(G_Addras.UI_Search) 
	Form_Show(UI_6_search,true)
	pass
func _on_Button_module_pressed():
#	G_Erorr_Excepttrans.new().Show_print()
	var UI_Title_show = load(G_Addras.UI_Title_show) 
	Form_Show(UI_Title_show,true)
	
#Form_Show
func Form_Show(ver_1 ,ver_2):
	if G_Class.i_state == G_Class.I_FOEM_STATUS.Show_Form_true:
#		G_Erorr_Excepttrans.new().Show_print()
		G_Class.i_state = G_Class.I_FOEM_STATUS.Show_Form_false#-------------/
		var activty = ver_1.instantiate()
		UI_Launchers.add_child(activty)
		if ver_2:
			activty.i_Form_Show(true)
	
	
	
