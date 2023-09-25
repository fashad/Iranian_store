#Q_12_off_Justify
extends Q_12_Justify

#var G_Class = Public_Class.G_Class

#spawn_pieces
func spawn_pieces():## شروع نست کلممه ها 
	Text_off_Justify()
	pass


#Text_off_Justify
func Text_off_Justify():
	data_Reset_Page() #ریست کردن موقعیت ها کلمه
	line_Writeing.x  = Start_line # خط جاری 
	for i in G_Class.i_objck.size(): #   ریختن کلمه در ابجکت 
		if i < G_Class.i_split_5.size(): # کلمه های اماد  تظریق به رشته
			coun_ok = i
			# ستم نشت کلمات
			Show_division_char()# $ , ÷ , *     
		else:
			break
		
#Show_division_char # ستم نشت کلمات
func Show_division_char():# set position
	Character_calculator_function() # کلمه فعلی از فظای نشت خالی کم کن
	if G_Class.To_control:
		Font_Decider()
	if line_Writeing.x < G_Class.line_end_to_fix ||  Get_special_character():  #اگر به کارکتر ضرب تقسم خورد موقعیت تغیر کند
		Enter += G_Class.Enter #هر سری 20 پرش کن   20
		line_Writeing.x = Start_line # نقته شروع خر حط کلمه 340
		if !Get_special_character(): # اگر به کارکتر ضرب تقسم خورد موقعیت تغیر کند
			Character_calculator_function() # کلمه فعلی از فظای نشت خالی کم کن
			set_i_position(Vector2(line_Writeing.x  ,Enter))
	else:
		#بیرون کشین کارکترضرب  از کلمه ها
		if !add_oblack():# ×   
			set_i_position(Vector2(line_Writeing.x  ,Enter))
		else:
			line_Writeing.x =int(line_Writeing.x + G_Class.i_objck[coun_ok].i_area.x)


	
	


