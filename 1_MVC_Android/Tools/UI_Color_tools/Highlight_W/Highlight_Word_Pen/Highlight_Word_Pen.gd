#Highlight_Word_Pen
extends Node2D


var G_Class = Public_Class.G_Book
enum MOVE_SET {LEFT ,RIGHT , UP}
var current_state =  MOVE_SET.UP

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
	$TextureClear/CheckBox.set_process(false)
	position = Vector2(20 ,120)

	

func _on_TextureClear_button_down():
	current_state = MOVE_SET.RIGHT

func _on_TextureClear_button_up():
	current_state = MOVE_SET.UP


func _on_Area2D_tools_Clear_body_entered(body):
	if $TextureClear/CheckBox.button_pressed && get_parent().visible:
		var i_body_name = int(str(body.name))
		if  !i_body_name in G_Class.Copy_Painted_Select_R_L:
			G_Class.Copy_Painted_Select_R_L.append(int(str(body.name)))
			G_Class.Copy_Painted_Select_R_L.sort()
			get_parent().get_parent().get_parent().get_parent().UI_2_Show_Page().Perfuse_Update()
 
