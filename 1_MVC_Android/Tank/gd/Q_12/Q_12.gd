#Q_12
#ساخت 340 ابجکت لیبل
extends Node2D
 
var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book
#Justify
var off_Justify_12 = load(G_Addras.ch_word_off_Justify).new()
var no_Justify_12 = load(G_Addras.ch_word_no_Justify).new()
#var ch_word_5 = load(G_Addras.ch_word)
var i_objck :Array # نگهداره ادرس  همه لیبل ها
var Justify_ok
 


func _ready():
	object_Construction()
	
	
#object_Construction
func object_Construction():
	var ch_word_5 = load(G_Addras.Label_objact)
	for i in 340:
		var word = ch_word_5.instantiate()
		G_Class.i_objck.append(word)
		add_child(G_Class.i_objck[i])
		
		
		


#spawn_pieces
func spawn_pieces():
	Pouring_value_into_objects()
	Making_an_object_new_Label()
	collision_point()
	object_Contruction_Update()

func collision_point():
	for i in G_Class.array_St_Body:
#		i.queue_free()
		i.free()
	G_Class.array_St_Body.clear()
	for i in G_Class.i_split_5.size():
		var St_Body = StaticBody2D.new()
		St_Body.name =str(G_Class.i_split_5[i].i_id)
		add_child(St_Body)
		G_Class.array_St_Body.append(St_Body)
	pass

#---@
#Making_an_object_new_Label
func Making_an_object_new_Label():
	if G_Class.text_simple_Justify:#i_off_Justify = true
		off_Justify_12.spawn_pieces()
	else:#i_no_Justify = false
		no_Justify_12.spawn_pieces()
		pass


func Pouring_value_into_objects():
	for i in G_Class.i_split_5.size():
		G_Class.i_objck[i].set_text_ok(i)



func object_Contruction_Update():
	var Collision_point = load(G_Addras.Collision_point).new()
	for i in G_Class.i_objck.size():
		if i < G_Class.i_split_5.size():
			Collision_point.set_Run_font_point(i)
			G_Class.i_objck[i].set_position(G_Class.i_objck[i].get_i_position())
		else:
			G_Class.i_objck[i].Text_null()
			G_Class.i_objck[i].set_position(Vector2(-120 ,-120))
	
