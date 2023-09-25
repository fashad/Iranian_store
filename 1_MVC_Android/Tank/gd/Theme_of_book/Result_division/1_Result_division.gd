#Result_division
#کلاس تظیم اندازه فوت فاصله از همه
extends Node2D

var G_Class = Public_Class.G_Book

func set_Run_font():
	match G_Class.font_style :
		0:
			Font_Decider_Enter_BZar()
		1:
			Font_Decider_Enter_Vazir()
		2:
			Font_Decider_Enter_tahoma()
		3:
			Font_Decider_Enter_tahomabd()
	

#Break_into_tenlab
func  Font_Decider_Enter_BZar():
	match G_Class.font_size:
		14:
			Font_Decider(230 ,0 ,15 ,340 ,30 ,2 ,90)
		15:
			Font_Decider(200 ,0 ,20 ,340 ,30 ,5 ,90)
		16:
			Font_Decider(170 ,0 ,20 ,340 ,30 ,5,90)
		17:
			Font_Decider(150 ,0 ,25 ,340 ,30 ,5 ,90)
		18:
			Font_Decider(130 ,0 ,25 ,340 ,30 ,5 ,90)
		19:
			Font_Decider(120 ,0 ,25 ,340 ,30 ,5 ,90)
		20:
			Font_Decider(110 ,0 ,25 ,340 ,30 ,5 ,90)
		21:
			Font_Decider(100 ,0 ,25 ,340 ,30 ,5 ,90)
		22:
			Font_Decider(100 ,0 ,25 ,340 ,30 ,5 ,90)
		23:
			Font_Decider(90 ,0 ,25 ,340 ,30 ,5 ,90)
		24:
			Font_Decider(85 ,0 ,25 ,345 ,30  ,5 ,90)

func  Font_Decider_Enter_Vazir():
	match G_Class.font_size:
		14:
			Font_Decider(180 ,1 ,20 ,340 ,30 ,2 ,90)
		15:
			Font_Decider(170 ,1 ,20 ,340 ,30,2 ,90)
		16:
			Font_Decider(120 ,1 ,20 ,340 ,30 ,2 ,90)
		17:
			Font_Decider(110 ,1 ,20 ,340 ,30 ,2 ,90)
		18:
			Font_Decider(110 ,1 ,20 ,340 ,25 ,2 ,90)
		19:
			Font_Decider(100 ,1 ,25 ,340 ,25 ,2 ,90)
		20:
			Font_Decider(95 ,1 ,25 ,340 ,25 ,2 ,90)
		21:
			Font_Decider(95 ,1 ,25 ,340 ,25 ,2 ,90)
		22:
			Font_Decider(85 ,1 ,25 ,340 ,25 ,2 ,90)
		23:
			Font_Decider(85 ,1 ,25 ,340 ,25 ,5 ,90)
		24:
#			Font_Decider(80 ,1 ,25 ,340 ,25 ,5 ,90)
			Font_Decider(80 ,1 ,25 ,340 ,25 ,5 ,80)

func  Font_Decider_Enter_tahoma():
	match G_Class.font_size:
		14:
			Font_Decider(200 ,2 ,15 ,340 ,15 ,2 ,90)
		15:
			Font_Decider(160 ,2 ,20 ,340 ,20 ,2 ,90)
		16:
			Font_Decider(145 ,2 ,20 ,340 ,20 ,2 ,90)
		17:
			Font_Decider(135 ,2 ,20 ,340 ,20 ,2 ,90)
		18:
			Font_Decider(125 ,2 ,20 ,340 ,20 ,2 ,90)
		19:
			Font_Decider(105 ,2 ,20 ,340 ,20 ,2 ,90)
		20:
			Font_Decider(95 ,2 ,20 ,340 ,20 ,2 ,90)
		21:
			Font_Decider(90 ,2 ,25 ,340 ,20 ,2 ,90)
		22:
			Font_Decider(80 ,2 ,25 ,340 ,20 ,2 ,90)
		23:
			Font_Decider(76 ,2 ,25 ,340 ,20 ,2 ,90)
		24:
			Font_Decider(75 ,2 ,25 ,340 ,20  ,2 ,90)

func  Font_Decider_Enter_tahomabd():
	match G_Class.font_size:
		14:
			Font_Decider(190 ,3 ,15 ,340 ,25 ,5 ,90)
		15:
			Font_Decider(130 ,3 ,20 ,340 ,20 ,5 ,90)
		16:
			Font_Decider(120 ,3 ,20 ,340 ,20 ,5 ,90)
		17:
			Font_Decider(115 ,3 ,20 ,340 ,20 ,2 ,90)
		18:
			Font_Decider(110 ,3 ,20 ,340 ,20 ,2 ,90)
		19:
			Font_Decider(95 ,3 ,20 ,340 ,20 ,2 ,90)
		20:
			Font_Decider(85 ,3 ,25 ,340 ,20 ,2 ,90)
		21:
			Font_Decider(80 ,3 ,25 ,340 ,20 ,2 ,90)
		22:
			Font_Decider(75 ,3 ,25 ,340 ,20 ,2 ,90)
		23:
			Font_Decider(65 ,3 ,25 ,340 ,20 ,2 ,90)
		24:
			Font_Decider(60 ,3 ,25 ,340 ,20 ,2 ,90)

func Font_Decider(ver_1 ,ver_2 ,ver_3 ,ver_4 ,ver_5 , ver_6 ,ver_7):
	G_Class.Word_count_and_break = ver_1# q تعداد کلمات
	G_Class.font_style = ver_2# نوع  فونت
	G_Class.Enter = ver_3 # فاصله هرر اینتر
	G_Class.Start_line = ver_4 #نقطه شروع خط 
	G_Class.line_end_to_fix = ver_5 # نقطه پپاینن هر خط
	G_Class.spacing_top = ver_6 #ففااصله بین کلمه ها
	G_Class.Enter_start = ver_7 #نطقه شروه اولین اینتر


func Perfuse_Next():
	set_Run_font()  
#	if G_Class.contant_ok  < 1 + (G_Class.i_pr_Page_1.size() / G_Class.Word_count_and_break):
	if G_Class.contant_ok  < 1 + int(G_Class.i_pr_Page_1.size()/float(G_Class.Word_count_and_break)):
		G_Class.contant_ok += 1
		G_Class.next_step = G_Class.contant_ok * G_Class.Word_count_and_break
		G_Class.Marking = G_Class.next_step - G_Class.Word_count_and_break
#		print("next.. ",G_Class.Marking ," <> ", G_Class.next_step)

func Perfuse_Update():
	set_Run_font()
	G_Class.next_step = G_Class.contant_ok * G_Class.Word_count_and_break
	G_Class.Marking = G_Class.next_step - G_Class.Word_count_and_break
#	print("updae.. " ,G_Class.contant_ok ," <> ", G_Class.contant_ok)

func Perfuse_Back():
	set_Run_font()
	if 1 < G_Class.contant_ok :
		G_Class.contant_ok -= 1
		G_Class.next_step = G_Class.contant_ok * G_Class.Word_count_and_break
		G_Class.Marking = G_Class.next_step - G_Class.Word_count_and_break
#		print("back.. " ,G_Class.Marking ," <> ", G_Class.next_step)
