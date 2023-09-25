#1_Object_Word
# دونه دون کلامت به ابجکت تبدیل می کنند
extends Node2D

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book
#identity
var i_id = -1
var i_name = ""
var i_Titles_Color = false
var i_length = -1


func set_list(id :int ,j_name :String ,Titles_Color :bool) -> void:
	self.i_id = id
	self.i_name = j_name
	self.i_Titles_Color = Titles_Color
	self.i_length = i_name.length()

#
####font_Color_
func set_color_font(i_Objckt ,color_back):
	match color_back:
		G_Addras.White:#White------
			i_Objckt.modulate = G_Class.Color_White
		G_Addras.Black:#Black------
			i_Objckt.modulate = G_Class.Color_Black
		G_Addras.Yellowing:#Yellowing-----
			i_Objckt.modulate = G_Class.Color_Yellowing
		G_Addras.Blue:#Blue-----
			i_Objckt.modulate = G_Class.Color_Blue
		G_Addras.Defalt:#White------
			i_Objckt.modulate = G_Class.Color_Defall_white 

