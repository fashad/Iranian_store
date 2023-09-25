#UI_Registrationa
#دریافت ااعلاعات از کار بر برای ثبت نام
extends Node2D

var G_Addras = Public_Class.G_Book_Adddras_Servicees

 

func _on_but_go_pressed():
	var Registrationa = load(G_Addras.Registrationa_Data_Save).new()
	var i_phone = $n/i_phone_number.get_text()
	var i_pass = $n/i_pass.get_text()
	var j_Array =[]
	if i_phone == "" && i_pass == "":
		$n/Label.visible = true
		$n/Label.text = Public_Addras.Education_Setting_7
	else :
		j_Array.append("i_name")
		j_Array.append("i_gmali")
		j_Array.append(i_phone)
		j_Array.append("i_usar")
		j_Array.append(i_pass)
		var i_Array =[]
		i_Array.append(j_Array)
		Registrationa.set_Data_My_Account(i_Array)
		Public_Class.change_scene(G_Addras.UI_End_SER)

func _on_but_membership_pressed():
	Public_Class.change_scene(G_Addras.Membership)
