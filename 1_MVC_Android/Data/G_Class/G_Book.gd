#G_Book
extends Node

var G_Addras = Public_Class.G_And_Addras
#var FILE_LOAD :String #="user://my_book/All_Book/Activity/save_tite.tres" #"user://save_tite.tres"
var ADDRESS_FILE_OPEN :String #="user://my_book/All_Book/Activity/Activity.tres"
var FILE_SAVE_TITE :String #="user://my_book/All_Book/Activity/save_tite.tres" #"user://save_tite.tres"
var FILE_SAVEE_SETTING :String 
#var FILE_SAVEE_REGISTER :String 
 #Name_OS---------------------------------------
var name_OS : String # name
var Book_name :String 
var crest_foldr :Array #همه ادرس ها
var i_name_File :Array # نام همه فایل ها
#Show_Form-----------------------------------
enum I_FOEM_STATUS {Show_Form_true ,Show_Form_false} #Show form اجازه نمایش یا ادم نماییش فرم
var i_state = I_FOEM_STATUS.Show_Form_true #state  وضعیت نمایش فرم جاری
#Data word-----------------------------------
var i_pr_Page_1 :Array  #Ail word همه کلمه ها 
var i_objck :Array #Ail objck Label همه لیبل ادرس ها یا ابجکت ها
var i_split_5 :Array # 85 Label کلمات برگزیده برای نمایش 
var i_pr_Title :Array  #Ail Title id ایدی شروع انواع ها
var Load_Painted_Ones:Array # Ail Select word id کلمات رنگی نگهداری می کنند
#COPY-----------------------------------------
var Copy_Painted_Select_R_L:Array  # Select starting point of the end 
#Search-------------------------------------
var i_search :Array[String]  #All Word Search  ارایه شه سرچ کلمه ها
#show_Animation---------------------------------------
var i_show_Animation :bool = true# نمایش انی میشن
#Break---------------------------------------
var text_simple_Justify :bool = true #i_off_Justify = true کلمه تا لبه فاصله ندارد
var Word_count_and_break :int #90 q  شکستنن  کلمه
var Enter_start :int #= 20 #Enter start   اینتر هر خط
var Enter :int #= 20 #Enter Line اولین انتر هرخط
var Start_line :int #= 340 #start Line   شروع مموقعییت هر خظ
var line_end_to_fix :int #= 10 #finsh line   پایان هر خط
var contant_ok = 0
var Marking :int = -Word_count_and_break #Start Word 0 نقطه شروع ارایه کلمه ها
var next_step :int = 0 #Finsh Word #85 نقطه پایان کلمه ها
var Click_Left_right :bool = false #Click_Next_Toush به چپ  چپ یا به راست راست حرکت صفحه
#Color_Cod------------------شمار رنگ ها
var Transparenc_Color :float = 0.35
const Color_White :Color = Color(1 ,1 ,1 ,1)#White
const Color_Black :Color = Color(0 ,0 ,0 ,1)#Black
const Color_Yellowing :Color = Color(1 ,1 , 0 ,1)#Yellowing
const Color_Blue :Color = Color(0 ,0.18 ,1 ,1)#Blue
const Color_Red :Color = Color(1 ,0.11 ,0 ,1)#Red
const Color_Purple :Color = Color(0.60 ,0.1 ,1 ,1)#Purple
const Color_Defall_white: Color = Color(1 ,1 ,1 ,1)#white
const Color_Pale_Blue: Color = Color(0 ,0.97 ,0.99 ,1)#white
const Color_Blue_cheer: Color = Color(0.72 ,0.94 ,0.94 ,0.40)#Blue_cheer
#font_Backgrand-Color------------------
var manager_Color :String
var font_Title_Color :String #= G_Addras.Blue #Title Color
var font_Color :String #= G_Addras.Black #Font Color
var Backgrand_Color :String  #backgrand
#Font-size-Style-style-------------------------
var To_control :bool = false# فکس کنند صفحه کلمات
var font_size_small:int = 14
var font_size_big:int = 24
var font_size :int = font_size_big
var i_Style :Array[String]= [G_Addras.font_0,G_Addras.font_1,G_Addras.font_2,G_Addras.font_3]
var font_style:int #= 1
var spacing_top :int = 0
#File_Seting_data_save-----------------------------------------------------------
var D_TPM
##Collision_point----------------------------------------------------------- 
var array_St_Body :Array
