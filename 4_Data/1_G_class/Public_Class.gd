# G_Class
extends Node2D

#Show_Form-----------------------------------
enum I_FOEM_STATUS {Show_Form_true ,Show_Form_false} #Show form اجازه نمایش یا ادم نماییش فرم
var i_state = I_FOEM_STATUS.Show_Form_true #state  وضعیت نمایش فرم جاری
#And.----
var G_And_Addras :Node
var G_Book :Node
#Wab.----
var G_Book_Addras_Store :Node
var G_Store :Node
var Objack_book 
#Ser.----
var G_Book_Adddras_Servicees :Node
var G_Services :Node
#Con.----
var G_Addras_Connection :Node
var G_Connection :Node

#change_scene---------------------------------------- حرکت بین صفحه ها
func change_scene(scene_1:String):
	G_Erorr_Excepttrans.new().Show_print(Public_Addras.Class_G_Class ,scene_1)
	get_tree().change_scene_to_file(scene_1)
 
