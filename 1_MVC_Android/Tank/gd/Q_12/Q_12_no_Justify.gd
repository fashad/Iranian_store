#Q_12_no_Justify
extends Q_12_Justify
 
var no_Justify_fox :Array


#spawn_pieces
func spawn_pieces():
	Text_no_Justify()
	
	
#Text_no_Justify
func Text_no_Justify():
	data_Reset_Page()
	no_Justify_fox.clear()
	for i in G_Class.i_objck.size():
		if i < G_Class.i_split_5.size():
			coun_ok = i
			Show_division_char()# $ , ÷ , *
		else:
			break

#Show_division_char
func Show_division_char():# set position
	Character_calculator_function() #line_Writeing.x - G_Class.i_objck[coun_ok].i_area.x
	if G_Class.To_control:
		Font_Decider()
	if line_Writeing.x < G_Class.line_end_to_fix ||  Get_special_character():
#		G_Class.line_end_to_fix = 30
		Enter += G_Class.Enter #20
		line_Writeing.x = Start_line #340
		
		if !Get_special_character():# $, * , ÷
			Character_calculator_function()#line_Writeing.x - G_Class.i_objck[coun_ok].i_area.x
			set_i_position(Vector2(line_Writeing.x  ,Enter))
			var spas_ok :int = The_End_word()
			The_Middle_words(spas_ok)

		no_Justify_fox.clear()
		no_Justify_fox.append(coun_ok)
	else:
		no_Justify_fox.append(coun_ok)
		if !add_oblack():# × 
			set_i_position(Vector2(line_Writeing.x  ,Enter))
			pass
		else:
			line_Writeing.x =int(line_Writeing.x + G_Class.i_objck[coun_ok].i_area.x)

#The_Middle_words
func The_Middle_words(spas_ok):
	if 2 < no_Justify_fox.size():
		var i_Justify_ok = spas_ok / (no_Justify_fox.size() - 2)
		if 0 < spas_ok  && i_Justify_ok < spas_ok:
			for i in no_Justify_fox.size():
				if i != 0 && no_Justify_fox.size()-1 != i:# Not 0 , Not finsh list
					var jast = G_Class.i_objck[no_Justify_fox[i]].get_i_position()
					jast.x = jast.x - (i_Justify_ok * i)
					G_Class.i_objck[no_Justify_fox[i]].set_i_position(jast)
			pass

#The_End_word
func The_End_word()-> int:
	var char_finsh = G_Class.i_objck[no_Justify_fox[no_Justify_fox.size()-1]].get_i_position()
	var spas_ok  = char_finsh.x - G_Class.line_end_to_fix
	G_Class.i_objck[no_Justify_fox[no_Justify_fox.size()-1]].set_i_position(Vector2(G_Class.line_end_to_fix ,char_finsh.y))
	return spas_ok


