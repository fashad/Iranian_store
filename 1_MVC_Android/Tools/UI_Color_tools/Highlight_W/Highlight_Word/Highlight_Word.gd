#Highlight_Word
extends Node2D

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book

enum I_COLOR_STATUS {Blue ,yellow ,Red ,Purple} #Show form
var i_state #state
var fathers_address

func _ready():
	fathers_address = get_parent()
	i_state = I_COLOR_STATUS.Blue
	Back_to_Zero()


func Delete_additional_card(i)->bool:
	var my_mark =[G_Addras.my_mark_1 ,G_Addras.my_mark_2 ,G_Addras.my_mark_3]
	if G_Class.i_split_5[i].i_name in my_mark :
		return false
	else :
		return true
	
	
func Back_to_Zero():
	if visible:
		$Highlight_Word_Pen.Back_to_Zero()
		Item_Colot()



 
func _on_Button_Save_pressed():
	G_Class.i_show_Animation = true
	Save_the_Selected_Color()
	fathers_address.Common_between_Functions()
	

func _on_Button_back_pressed():
	G_Class.Copy_Painted_Select_R_L.clear()
	Back_to_Zero()
	fathers_address.Common_between_Functions()
	visible = false


func _on_Button_reset_pressed():
	i_state = I_COLOR_STATUS.Blue
	Back_to_Zero()
	Item_Colot()

func _on_Button_Blue_pressed():
	i_state = I_COLOR_STATUS.Blue
	Item_Colot()

func _on_Button_Red_pressed():
	i_state = I_COLOR_STATUS.Red
	Item_Colot()

func _on_Button_yellow_pressed():
	i_state = I_COLOR_STATUS.yellow
	Item_Colot()

func _on_Button_Purple_pressed():
	i_state = I_COLOR_STATUS.Purple
	Item_Colot()

func Save_the_Selected_Color():
	var Copy_L_R =[]
	Copy_L_R.clear()
	Copy_L_R = G_Class.Load_Painted_Ones
	for i in G_Class.Copy_Painted_Select_R_L:
		if Add_Painted_Ones(i) && i_state == I_COLOR_STATUS.Blue:
			Copy_L_R[0].append(int(i))
			Copy_L_R[0].sort()
		elif Add_Painted_Ones(i) && i_state == I_COLOR_STATUS.Purple:
			Copy_L_R[1].append(int(i))
			Copy_L_R[1].sort()
		elif Add_Painted_Ones(i) && i_state == I_COLOR_STATUS.Red:
			Copy_L_R[2].append(int(i))
			Copy_L_R[2].sort()
		elif Add_Painted_Ones(i) && i_state == I_COLOR_STATUS.yellow:
			Copy_L_R[3].append(int(i))
			Copy_L_R[3].sort()
	G_Class.Load_Painted_Ones = Copy_L_R
	var Color_Data = load(G_Addras.Data_Color_And).new()
	Color_Data.File_Save_Load()
	G_Class.Copy_Painted_Select_R_L.clear()
 

#Add_Painted_Ones
func Add_Painted_Ones (i) -> bool:
	if G_Class.Load_Painted_Ones.size() == 4:
		if !i in G_Class.Load_Painted_Ones[0] && !i in G_Class.Load_Painted_Ones[1] && !i in G_Class.Load_Painted_Ones[2] && !i in G_Class.Load_Painted_Ones[3]:
			return true
		else:
			return false
	else:
		return false
		
# Item_Colot()
func Item_Colot():
	if i_state == I_COLOR_STATUS.Blue: 
		$s/item_1.texture =load("res://9_My_assets/1_assats/A_32.bmp")
	elif i_state == I_COLOR_STATUS.Purple: 
		$s/item_1.texture =load("res://9_My_assets/1_assats/A_35.bmp")
	elif i_state == I_COLOR_STATUS.Red: 
		$s/item_1.texture =load("res://9_My_assets/1_assats/A_34.bmp")
	elif i_state == I_COLOR_STATUS.yellow: 
		$s/item_1.texture =load("res://9_My_assets/1_assats/A_33.bmp")
	pass
	
