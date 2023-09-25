#Highlight_Clear_Pen
extends Node2D

enum MOVE_SET {LEFT ,RIGHT , UP}
var current_state =  MOVE_SET.UP
var G_Class = Public_Class.G_Book
var fathers_address

func _ready():
	fathers_address = get_parent()

func _physics_process(_delta):
	if current_state ==  MOVE_SET.RIGHT:
		Fix_ok()
 


func Fix_ok():
	var i_position = Vector2.ZERO
	if which_key():
		i_position = get_global_mouse_position()
		position = i_position
#	print("Clear ",position)

	
func which_key()-> bool:
	var result :bool
	var toush_one = get_global_mouse_position()
	if toush_one.x > 10 && toush_one.x < 320 && toush_one.y > 72 && toush_one.y < 580:
		result = true
	else :
		result = false
	return result
#Back_to_Zero
func Back_to_Zero():
	G_Class.Copy_Delet_Painted.clear()
	$TextureClear/CheckBox.set_process(false)
#	$TextureClear/CheckBox.pressed = false
	position = Vector2(20 ,120)

	

func _on_TextureClear_button_down():
	current_state = MOVE_SET.RIGHT

func _on_TextureClear_button_up():
	current_state = MOVE_SET.UP


func _on_Area2D_tools_Clear_body_entered(body):
	if $TextureClear/CheckBox.pressed:
		var Copy_L_R =[]
		Copy_L_R.clear()
		Copy_L_R = G_Class.Load_Painted_Ones#File Load-----
		var i = int(str(body.name))
		if Add_Painted_Ones(i) && !i in G_Class.Copy_Painted_Select_R_L:
			G_Class.Copy_Painted_Select_R_L.append(int(str(body.name)))
			G_Class.Copy_Painted_Select_R_L.sort()
			Text_Delet_Painted(Copy_L_R)
 

#Add_Painted_Ones
func Add_Painted_Ones(ver) -> bool:
	var res
	for i in G_Class.Load_Painted_Ones.size():
#		if i in G_Class.Load_Painted_Ones[0] || i in G_Class.Load_Painted_Ones[1] || i in G_Class.Load_Painted_Ones[2] || i in G_Class.Load_Painted_Ones[3] && G_Class.Load_Painted_Ones.size() == 4 :
		if ver in G_Class.Load_Painted_Ones[i] :
			res = true
			break
		else:
			res = false
	return res

#Text_Search
func Text_Delet_Painted(Copy_L_R):
	for i in Copy_L_R.size():
		for sport in Copy_L_R[i]:
			if sport in G_Class.Copy_Painted_Select_R_L:
				Copy_L_R[i].erase(sport)
				Copy_L_R[i].sort()
	fathers_address.i_Copy_L_R = Copy_L_R
	fathers_address.get_parent().Show_Page_Perfuse_Update()
#	get_parent().get_parent().get_parent().get_parent().UI_2_Show_Page().Perfuse_Update()

