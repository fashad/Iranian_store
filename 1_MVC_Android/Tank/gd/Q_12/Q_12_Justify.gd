#Q_12_Justify
extends Node2D
class_name Q_12_Justify

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book
var Start_line :int # شروع خط 
var line_Writeing :Vector2 # خط جاری 
var Enter :int # اندازه ایننتر 
var coun_ok :int = 0 #شمارش کلمه 

#Character_calculator_function
func Character_calculator_function():# کلمه فعلی از فظای نشت خالی کم کن
	line_Writeing.x =int(line_Writeing.x - G_Class.i_objck[coun_ok].i_area.x)


#Get_special_character اگر به کارکتر ضرب تقسم خورد موقعیت تغیر کند
func Get_special_character() -> bool:# $, * , ÷      ÷                                                    *
	if G_Class.i_objck[coun_ok].i_name == G_Addras.my_mark_2 || G_Class.i_objck[coun_ok].i_name == G_Addras.my_mark_3:
		set_i_position(Vector2(-200 , -500))
		G_Class.i_objck[coun_ok].Text_null()
		return true
	else:
		return false
	


#add_oblack بیرون کشین کارکترضرب  از کلمه ها
func add_oblack() -> bool :# ×                ×
	if G_Class.i_objck[coun_ok].i_name ==G_Addras.my_mark_1:
		set_i_position(Vector2(-150 , -500))
		G_Class.i_objck[coun_ok].Text_null()
		return true
	else:
		return false
	
 
#set_i_position
func set_i_position(ver :Vector2):
	G_Class.i_objck[coun_ok].set_i_position(ver)

#data_Reset_Page
func data_Reset_Page(): #ریست کردن موقعیت ها کلمه
	Enter = G_Class.Enter_start  # اینتر هر خط
	line_Writeing = Vector2.ZERO # موقعیت نستن کلمه در هر خط 
	Start_line = G_Class.Start_line #  هر   خظ تا خط بالای چقدر فاصله بگیردد 
	line_Writeing.x  = Start_line # هر  خط چکونه ذر صحنه نماییش داد شود


func Font_Decider():
	G_Class.Word_count_and_break = G_Class.Word_count_and_break - 20
	G_Class.Start_line = 90
	G_Class.line_end_to_fix = 25
	G_Class.Marking = 0 #Start Word 0
	G_Class.next_step = 0
	G_Class.To_control =false
	
