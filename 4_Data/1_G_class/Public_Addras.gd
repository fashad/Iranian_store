#Public_Addras
extends Node

#.tank---------------------------------------------------------------------------
const my_book ="my_book"
const user :String = "user://"
const res :String = "res://"
const UI :String = "UI/"
const tres :String = ".tres"
const imag_png :String = ".png"
var OS_addres_file = OS.get_user_data_dir()
##.gd- صفحه کد ---------------------------.dg -------------------------------------------------
#1_MVC_Android--.gd
const G_And_Addras :String= "res://1_MVC_Android/Data/G_Class/G_And_Addras.gd"
##2_MVC_WAB--.gd
const G_Book_Addras_Store :String= "res://2_MVC_WAB/Data/G_Book_Addras_Store.gd"
#3_Services--.gd
const G_Book_Adddras_Servicees :String= "res://3_MVC_Services/Data/G_Book_Adddras_Servicees.gd"
#4_Data--.gd
const File_Tite :String= "res://4_Data/Hard/File_Date/File_Tite.gd"#public
const Search_Folder_File :String= "res://4_Data/Hard/Address Search/Search_Folder_File.gd"
const Search_Folder :String= "res://4_Data/Hard/Address Search/Search_Folder.gd"
const Search_File :String= "res://4_Data/Hard/Address Search/Search_File.gd"
#const My_Dir_Access :String= "res://4_Data/Hard/Hard_Acces/My_Dir_Access.gd"
const Dir_Foldeer :String= "res://4_Data/Hard/Dir_Foldeer/Dir_Foldeer.gd"
#6_MVC_CONNECTION--.gd
const G_Addras_Connection :String= "res://6_MVC_Connection/Data/G_Addras_Connection.gd"
#.tscn- صحنه ----------------------------tscn---------------------------------------------
##1_MVC_Android--.tscn
const UI_Start_Book :String  = "res://1_MVC_Android/UI/UI_Main/UI_Start_Book/UI_Start_Book.tscn"
#2_MVC_WAB--.tscn
const UI_Start_WAB :String  = "res://2_MVC_WAB/UI/UI_Main/UI_Start_WAB/UI_Start_WAB.tscn"
#3_Services--.tscn
const UI_Start_SER :String  = "res://3_MVC_Services/UI/UI_Mian/UI_Start_SER/UI_Start_SER.tscn"
#6_MVC_Connection--.tscn
const UI_Start_CON :String  = "res://6_MVC_Connection/UI_Mian/UI_Start_CON/UI_Start_CON.tscn"
#Messages -پیام------------------------------------------------------------------------
const Class_G_Class :String= "G_Class "
const Erorr_Messages_Signs_7 :String = " |> "
const Erorr_Messages_8 :String = " |> erorr " 
#Education-----
const Education_Setting_1 :String = " تنظیمات رنگ زمینه  رنگ من عنوان ها " 
const Education_Setting_2 :String = " تظیمات تراز متن و نوع قلم " 
const Education_Setting_3 :String = " تظیمات کلیک حرکت برای دست چب و راست دست و اندازه متن " 
const Education_Setting_4 :String = " ذخیر تظیمات بازدکشت به کارخانه " 
const Education_Setting_5 :String = " باز گشت به عقب تظیمات فوت غیر... کتاب خوان جستحو فهرست کتاب " 
const Education_Setting_6 :String = " مشکل در برقراری شبکه... " 
const Education_Setting_7 :String = "مقدار خالی است"
const Education_Setting_8 :String = "پسور مشکل دارد"

