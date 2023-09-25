#Membership
extends Node2D


var G_Addras = Public_Class.G_Book_Adddras_Servicees

func set_data_ok():
	var Registrationa = load(G_Addras.Registrationa_Data_Save).new()
	var i_name = $N/i_name.get_text()
	var i_gmali = $N/i_gmali.get_text()
	var i_pon = $N/i_pon.get_text()
	var i_usar = $N/i_usar.get_text()
	var i_pass_1 = $N/i_pass_1.get_text()
	var i_pass_2 = $N/i_pass_2.get_text()
	var j_Array =[]
		
	if i_name == "" && i_gmali == "" && i_pon == "" &&  i_usar == "" &&  i_pass_1 == "" && i_pass_2 == "":
		$N/Label.visible = true
		$N/Label.text = Public_Addras.Education_Setting_7
	else :
		if i_pass_1 == i_pass_2:
			j_Array.append(i_name)
			j_Array.append(i_gmali)
			j_Array.append(i_pon)
			j_Array.append(i_usar)
			j_Array.append(i_pass_1)
			var i_Array =[]
			i_Array.append(j_Array)
			Registrationa.set_Data_My_Account(i_Array)
			Public_Class.change_scene(G_Addras.UI_End_SER) 
		else :
			$N/Label.visible = true
			$N/Label.text = Public_Addras.Education_Setting_8
		


func _on_button_pressed():
	set_data_ok()



func _on_button_2_pressed():
	$N/i_name.set_text("")
	$N/i_gmali.set_text("")
	$N/i_pon.set_text("")
	$N/i_usar.set_text("")
	$N/i_pass_1.set_text("")
	$N/i_pass_2.set_text("")
