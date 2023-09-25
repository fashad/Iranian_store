#Label_objact
extends Node

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book
#Properties---------------------
var i_ver
#Object Specification---------------------
var i_id_objck :int 
var i_id :int =0
var i_name : String
var i_length : int
var i_Titles :bool = false
var string_size :Vector2 
#Objack---------------------
@onready var text_ok :Label = get_node("text_ok")
@onready var text_i_id :Label = get_node("text_i_id")
@onready var objact_i_id :Label = get_node("objact_i_id")
@onready var text_module :ColorRect = get_node("module")
@onready var text_i_Select :ColorRect = get_node("i_Select")
@onready var text_search :ColorRect = get_node("search")
#Location---------------------
var i_area :Vector2 = Vector2.ZERO
var i_position :Vector2 = Vector2.ZERO

#set_text_ok
func set_text_ok(ver):
	set_ver(ver)
	Check_the_title()
	Show_Text_load_Module()
	Show_Text_Search()
	Show_Text_Select_Module()
	Animation_Book()
	
	

#set_ver
func set_ver(i):
	i_id_objck = i
	i_ver = G_Class.i_split_5[i_id_objck]
	i_name = i_ver.i_name
	i_length = i_ver.i_length
	i_id = i_ver.i_id
	objact_i_id.text = str(i_id_objck)
	i_Titles = i_ver.i_Titles_Color
	text_ok.text = str(i_name)
	text_ok.add_theme_font_size_override("font_size",G_Class.font_size)
	text_ok.add_theme_font_override("font" ,load(G_Class.i_Style[G_Class.font_style]))# نوع ففونت
	text_ok.set_custom_minimum_size($text_ok.get_theme_font("font").get_string_size($text_ok.text))# سایز فونت
	string_size = $text_ok.get_theme_font("font").get_string_size($text_ok.text, HORIZONTAL_ALIGNMENT_LEFT, -1, $text_ok.get_theme_font_size("font_size")) 
	i_area.x = int(string_size.x + G_Class.spacing_top)
	i_area.y = int(string_size.y)
#	text_i_id.text = str(string_size)
	text_i_id.text = str(i_id)
	i_position = Vector2.ZERO


#i_position
func get_i_position() -> Vector2:
	return i_position
##set_i_area
func set_i_position(j_position :Vector2):
	i_position  = j_position
	
 
#Check_the_title
func  Check_the_title():
	if i_Titles:
		i_ver.set_color_font(text_ok ,G_Class.font_Title_Color)
	else:
		i_ver.set_color_font(text_ok ,G_Class.font_Color)

#Show_Text_load_Module
func Show_Text_load_Module():
#	G_Class.Transparenc_Color =0.35
	for i in G_Class.Load_Painted_Ones.size():
		if i_id in G_Class.Load_Painted_Ones[i]:
			match  i:
				0:#Blue---------
					Marking_bell(Color(0 ,0.18 ,1 ,G_Class.Transparenc_Color))
					text_module.visible = true
					break
				1:#Purple---------
					Marking_bell(Color(0.60 ,0.1 ,1 ,G_Class.Transparenc_Color))
					text_module.visible = true
					break
				2:#Red---------
					Marking_bell(Color(1 ,0.11 ,0 ,G_Class.Transparenc_Color))
					text_module.visible = true
					break
				3:#Yellowing---------
					Marking_bell(Color(1 ,1 , 0 ,G_Class.Transparenc_Color))
					text_module.visible = true
					break
#					_:
#						text_module.visible = false
		else:
			text_module.visible = false
		



func Marking_bell(colr :Color):
	text_module.size = Vector2(i_area.x -(i_area.x/10),i_area.y -(i_area.y/10)-15)
	text_module.color = colr
	text_i_Select.color = colr
	text_i_Select.size = Vector2(i_area.x -(i_area.x/10),i_area.y -(i_area.y/10))
	var text_i_search = Vector2.ZERO
	text_i_search.y = 5  
	text_i_search.x = i_area.x - (i_area.x/10) 
	text_search.size = text_i_search

#Show_Text_Select_Module()
func Show_Text_Select_Module():
	if i_id in G_Class.Copy_Painted_Select_R_L:
		Marking_bell(G_Class.Color_Blue_cheer)
		text_i_Select.visible = true
	
	else:
		text_i_Select.visible = false
	pass
#Text_Module
func Show_Text_Search():
	if i_name in G_Class.i_search:
		text_search.visible = true
		Marking_bell(Color(1 ,0 , 0 ,G_Class.Transparenc_Color))
	else:
		text_search.visible = false

#Text_null
func Text_null():
	text_ok.text = str("")
	text_module.visible = false
 
func Animation_Book():
	if G_Class.i_show_Animation:
		var tween = create_tween()
		tween.tween_method(set_label_text, 0, i_name.length(), 0.2)


func set_label_text(value: int):
	$text_ok.set_visible_characters(value)
