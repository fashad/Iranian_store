#G_Erorr_Excepttran
extends Node
class_name G_Erorr_Excepttrans


enum ERORR_SET {Defalt ,OFF ,ON }
#var Erorr_state = ERORR_SET.Defalt
var Erorr_state = ERORR_SET.Defalt
var G_Addras = Public_Addras


 
#-----------------------------------------------------	
func Show_print(Name_Clsss ,Erorr):
	match  Erorr_state:
		ERORR_SET.Defalt:
			_Formst_Show(Name_Clsss ,Erorr)


#Formst_Show
func _Formst_Show(Name_Clsss ,Erorr):
	var formt = "show"
	match formt:
		"/":
			print("Class.. "+G_Addras.Erorr_Messages_7,Name_Clsss ,G_Addras.Erorr_Messages_7 ,Erorr)
		">>":
			print("Class.. "+G_Addras.Erorr_Messages_8,Name_Clsss ,G_Addras.Erorr_Messages_8 ,Erorr)
		"push_error":
			push_error(str(Name_Clsss ,Erorr))
		"push_warning":
			push_warning(str(Name_Clsss ,Erorr))
		"print_debug":
			print_debug(str(Name_Clsss ,Erorr))
		"printt":
			printt("Class.. ",G_Addras.Erorr_Messages_8,Name_Clsss ,G_Addras.Erorr_Messages_8 ,Erorr)
		"prints":
			prints("Class.. ",G_Addras.Erorr_Messages_8,Name_Clsss ,G_Addras.Erorr_Messages_8 ,Erorr)
		"show":
			printt("Class.. ",G_Addras.Erorr_Messages_Signs_7,Name_Clsss ,G_Addras.Erorr_Messages_Signs_7 ,Erorr)
 
