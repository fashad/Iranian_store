#Save_the_book_pack
# ادرس ها برای لود کردن کتاب ست میکنند
extends Node

#var i_id:int =-1# ایدی
var i_d:String = "null"
#user://my_book/All_book/Activity/Activity.tres
var i_adrass :String = "null" #ادرس کناب مثال
#user://my_book/All_book/Activity/save_tite.tres 
var i_save_tite :String = "null"#  ادرس فایل کلمات اتخاب شدده 
#user://my_book/All_book/Activity/img_pictues.png
var i_image_view :String = "null" #ادرس عکس کتاب
var i_about :String = "null" # درباره کتاب
var i_ver :Array
var formt_ok = ["null" ,"null" ,"null" ,"null"]

#func book_date(adrass:String ,save_tite :String,i_image:String ,about:String):
func book_date(i_dir ,ver:Array):
	self.i_d = i_dir
	Formst_Array(ver)
	for i in i_ver.size():
		match  i:
			0:
				self.i_adrass = i_ver[i]
			1:
				self.i_save_tite = i_ver[i]
			2:
#				print("dd ")
				self.i_image_view = i_ver[i]
			3:
				self.i_about = i_ver[i]
	
func Formst_Array(ver):
	for i in ver:
		if "tres" in i:
			if i == "save_tite.tres":
				formt_ok[1] = i
			else :
				formt_ok[0] = i
		if "png" in i:
			formt_ok[2] = i
	self.i_ver = formt_ok
	pass


func  Show_data():
	G_Erorr_Excepttrans.new().Show_print("Save_the_book_pack" ,self.i_d)
	G_Erorr_Excepttrans.new().Show_print("Save_the_book_pack" ,self.i_adrass)
	G_Erorr_Excepttrans.new().Show_print("Save_the_book_pack" ,self.i_save_tite)
	G_Erorr_Excepttrans.new().Show_print("Save_the_book_pack" ,self.i_image_view)
	G_Erorr_Excepttrans.new().Show_print("Save_the_book_pack" ,self.i_about)
