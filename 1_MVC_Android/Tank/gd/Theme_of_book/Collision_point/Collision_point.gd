#Collision_point
#فضای برخورد هر کلمه
extends Node

var G_Class = Public_Class.G_Book
var i_ver :int 


func set_Run_font_point(ver):
	self.i_ver = ver
	Encounter_Standard()


func Encounter_Standard():
	var i_id = G_Class.i_split_5[i_ver].i_id
	var i_pos = G_Class.i_objck[i_ver].get_i_position()
	var i_Collision = CollisionShape2D.new()
	i_pos.x = i_pos.x +  (G_Class.i_objck[i_ver].string_size.x /2 )
	i_pos.y = i_pos.y + (G_Class.i_objck[i_ver].string_size.y /2 )
	var Circle = RectangleShape2D.new()
	Circle.size.x = G_Class.i_objck[i_ver].string_size.x
	Circle.size.y = G_Class.i_objck[i_ver].string_size.y /2
	i_Collision.shape = Circle
	G_Class.array_St_Body[i_ver].position = i_pos
	G_Class.array_St_Body[i_ver].call_deferred("add_child", i_Collision)
	G_Class.array_St_Body[i_ver].name = str(i_id)
#	G_Class.array_St_Body[i_ver].add_child(i_Collision)
#	G_Class.array_St_Body[i_ver].name =str(G_Class.i_objck[i_id].i_id_objck)

