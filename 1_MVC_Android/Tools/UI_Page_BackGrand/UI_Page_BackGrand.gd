#UI_Page_BackGrand
extends Node2D

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book

func _ready():
	Backgrand_book()

##backgrand_book
func Backgrand_book():
	set_color_Thme()
	Backgrand_Color_ok()

#set_color_Thme#ست کنند زنک عنوان  زمینه فونت 
func set_color_Thme():
	match G_Class.manager_Color:
		G_Addras.G_Black_Tl_Blue_Ft_White:
			_cantion_bavkgrand(G_Addras.Black ,G_Addras.Blue ,G_Addras.White)
		G_Addras.G_Yellowing_Tl_Blue_Ft_Black:
			_cantion_bavkgrand(G_Addras.Yellowing ,G_Addras.Blue ,G_Addras.Black)
		G_Addras.G_White_Tl_Yellowing_Ft_Black:
			_cantion_bavkgrand(G_Addras.White ,G_Addras.Yellowing ,G_Addras.Black)
		G_Addras.G_Black_Tl_Yellowing_Ft_White:
			_cantion_bavkgrand(G_Addras.Black ,G_Addras.Yellowing ,G_Addras.White)
		G_Addras.G_Gray_Tl_Yellowing_Ft_White:
			_cantion_bavkgrand(G_Addras.Gray ,G_Addras.Yellowing ,G_Addras.White)

func _cantion_bavkgrand(ver_1 ,ver_2 ,ver_3):
	G_Class.Backgrand_Color = ver_1
	G_Class.font_Title_Color = ver_2
	G_Class.font_Color = ver_3
		

func Backgrand_Color_ok():
	get_node("A1/A1/A1/B1/Sprite_Black").visible = false
	get_node("A1/A1/A1/B1/Sprite_Yellowing").visible = false
	get_node("A1/A1/A1/B1/Sprite_White").visible = false
	get_node("A1/A1/A1/B1/Sprite_Gray").visible = false
	match G_Class.Backgrand_Color:
		G_Addras.Yellowing:
			get_node("A1/A1/A1/B1/Sprite_Yellowing").visible = true
		G_Addras.Black:
			get_node("A1/A1/A1/B1/Sprite_Black").visible = true
		G_Addras.White:
			get_node("A1/A1/A1/B1/Sprite_White").visible = true
		G_Addras.Gray:
			get_node("A1/A1/A1/B1/Sprite_Gray").visible = true

