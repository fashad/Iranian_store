#UI_6_Settings
extends Node2D

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book
var UI_Launchers 
#var Setting_Data = load(G_Addras.Setting_Data).new()



func _ready():
#	UI_Launchers = get_tree().current_scene
	UI_Launchers = get_parent()

	Ail_label_Update()

#Show_Settings
func i_Form_Show(Meun_No_off):
	if Meun_No_off:
#		G_Class.I_FOEM_STATUS.Show_Form_false
		get_node("AnimationPlayer").play("New_On")
	else:
		get_node("AnimationPlayer").play("New_Off")

#on_TextureButton_pressed
func _on_TextureButton_pressed():
	Building_forever()
	

#-----------------Backgrand----------------------------
#cantion_bavkgrand
func cantion_bavkgrand(ver):
	G_Class.manager_Color = ver
#	var Background_theme = load(G_Addras.Background_theme).new()
#	Background_theme.set_color_Thme()
	UI_Launchers.UI_1_Page_Border().Backgrand_book()
	Inject_values()

func _on_A_colr_Black_Yellowing_pressed():
	cantion_bavkgrand(G_Addras.G_Black_Tl_Blue_Ft_White)
	pass

func _on_A_colr_yellow_2_pressed():
	cantion_bavkgrand(G_Addras.G_Yellowing_Tl_Blue_Ft_Black)
	pass
	
func _on_A_colr_White_pressed():
	cantion_bavkgrand(G_Addras.G_White_Tl_Yellowing_Ft_Black)
	pass

func _on_A_colr_Black_pressed():
	cantion_bavkgrand(G_Addras.G_Black_Tl_Yellowing_Ft_White)
	pass
	
func _on_A_colr_defalt_pressed():
	cantion_bavkgrand(G_Addras.G_Gray_Tl_Yellowing_Ft_White)
	
#-----------------Backgrand----------------------------

func Ail_label_Update():
	
	$A_1/Sprite2D/h/A_3/HBox/Label_size.text = str( G_Class.font_size)
	$A_1/Sprite2D/h/A_6/HBox/Label_Style.text = str(G_Class.font_style)
	A_2_TextureRect()

	
#---------------font_size--------------------------
func _on_Textu_big_pressed():
	if G_Class.font_size < G_Class.font_size_big: #24
		G_Class.font_size += 1
	else:
		G_Class.font_size = G_Class.font_size_small # 14
	Inject_values()
		
func _on_Textu_Small_pressed():
	if G_Class.font_size > G_Class.font_size_small: #14
		G_Class.font_size -= 1
	else:
		G_Class.font_size = G_Class.font_size_big #24
	Inject_values()
#---------------font_size--------------------------
	
func _on_Button_style_1_pressed():
	if G_Class.font_style < 3:
		G_Class.font_style += 1
	else:
		G_Class.font_style= 0
	Inject_values()


func _on_Button_style_2_pressed():
	if G_Class.font_style > 0:
		G_Class.font_style -= 1
	else:
		G_Class.font_style = 3
	Inject_values()
#---------------font_text_simple_Justify--------------------------

func _on_pra_1_pressed():
	G_Class.text_simple_Justify = false
	Inject_values()

func _on_pra_2_pressed():
	G_Class.text_simple_Justify = true
	Inject_values()
#---------------font_text_simple_Justify--------------------------


func _on_Reset_click_pressed():
	G_Class.font_size = 24
	G_Class.font_style = 1
	G_Class.text_simple_Justify = true
	cantion_bavkgrand(G_Addras.G_Yellowing_Tl_Blue_Ft_Black)
#	Inject_values()


func _on_Close_pressed():
	G_Class.Marking = -G_Class.Word_count_and_break #Start Word 0
	G_Class.next_step = 0
	var Setting_Data = load(G_Addras.Setting_Data).new()
	Setting_Data.set_data_Setting()
	Building_forever()
	


func Building_forever():
	i_Form_Show(false)
	Inject_values()
	await get_tree().create_timer(1.0).timeout
	G_Class.i_state = G_Class.I_FOEM_STATUS.Show_Form_true#----------/
	queue_free()
	pass
	
#Inject_values
func Inject_values():
#	G_Class.i_Font_Style_line_ok()
	UI_Launchers.UI_2_Show_Page().Perfuse_Update()
	Ail_label_Update()
	

func _on_but_Left_pressed():
	G_Class.Click_Left_right = true
	A_2_TextureRect()

func _on_but_Right_pressed():
	G_Class.Click_Left_right = false
	A_2_TextureRect()

func A_2_TextureRect():
	$A_1/Sprite2D/A_2/HBox/TextureRect.flip_h = G_Class.Click_Left_right
