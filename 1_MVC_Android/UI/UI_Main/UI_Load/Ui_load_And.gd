#UI_Load_And
extends Node2D

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book

#var Color_Data = load(G_Addras.Color_Data).new()# ساخت ارایه 4 رنگ
var i_word = load(G_Addras.i_word) #کلاس ابحکت کلمه ها
var pr_Page = []
var Titles_Color_ok :bool = false
 

func _ready():
	G_Class.name_OS = OS.get_name()
	$A_2.play("play")
	load_file()#خواندن همه کلمه های کتاب
	load_The_Painted_Ones()
	Objecti_fication_of_words()
	await get_tree().create_timer(1.0).timeout
	Public_Class.change_scene(G_Addras.UI_launchers_and)

	
#---&
#File-Page-show-Page--------------------------------
#load_file
func load_file():#خواندن همه کلمه های کتاب
	var My_File_AND = load(G_Addras.File_Book).new()
	pr_Page = My_File_AND.Load_File()
	
#load_The_Painted_Ones
func load_The_Painted_Ones():
	var My_File_AND = load(G_Addras.File_Book).new()
	G_Class.Load_Painted_Ones = My_File_AND.Load_The_Painted_Ones()
	G_Erorr_Excepttrans.new().Show_print("UI_Load_And " ,str("load >|:)  " ,G_Class.Load_Painted_Ones))
	pass

#Objecti_fication_of_words
func Objecti_fication_of_words():
	var i_id = 0
	var add_id = true
	for i in pr_Page.size():
		if !pr_Page[i].length() == 0:
#			var i_wor = i_word.new()
			var i_wor = load(G_Addras.i_word).new()
			match pr_Page[i]:
				G_Addras.my_mark_1:# "×"
					Titles_Color_ok = true
				G_Addras.my_mark_2:# "÷"
					Titles_Color_ok = false
#                                                   #  "×" 
			if Titles_Color_ok && pr_Page[i] != G_Addras.my_mark_1 && add_id:
				G_Class.i_pr_Title.append(i_id)
				add_id = false
			elif Titles_Color_ok == false:
				add_id = true
			i_wor.set_list(i_id ,str(pr_Page[i])  ,Titles_Color_ok)
			G_Class.i_pr_Page_1.append(i_wor)
			i_id +=1
		else:
#			print("hi")
			pass
 


