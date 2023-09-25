#Title_Show
extends Node2D

#var Test_item =load(G_Addras.List_Item_Titie)
var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book
var UI_Launchers 
var list_title :Array
var Marking :int = 0
var next_step :int = 0
var back_titl :int= 9
var No_off = false
#var ver_click =[]

func _ready():
#	UI_Launchers = get_tree().current_scene
	UI_Launchers = get_parent()
	_on_h_slider_value_changed(0)
	show_Label_Load(0)


func i_Form_Show(Meun_No_off):
	if Meun_No_off:
		get_node("AnimationPlayer").play("New_On")
	else:
		get_node("AnimationPlayer").play("New_Off")


func finsh_ok():
	i_Form_Show(false)
	await get_tree().create_timer(1.0).timeout
	G_Class.i_state = G_Class.I_FOEM_STATUS.Show_Form_true
	UI_Launchers.UI_4_Toush().i_state = UI_Launchers.UI_4_Toush().I_CLICK_STATUS.View_Next_back_menu
	UI_Launchers.UI_4_Toush().Clickis_released()
	queue_free()

#TextureButton
func _on_Text_Back_From():
#	G_Erorr_Excepttrans.new().Show_print(G_Addras.Class_Title_show ,"Title_show" ,G_Erorr_Excepttrans.new().Title_show)
	finsh_ok()

func Go_to_Item():
	UI_Launchers.UI_2_Show_Page().Perfuse_Update()
	finsh_ok()

#


func words_engine(id):# id
	var titel_ok :String
	var Test_item =load(G_Addras.List_Item_Titie)
	while id < G_Class.i_pr_Page_1.size():#                                               "×"
		if G_Class.i_pr_Page_1[id].i_Titles_Color && G_Class.i_pr_Page_1[id].i_name != G_Addras.my_mark_1:
			titel_ok = titel_ok + G_Class.i_pr_Page_1[id].i_name +" "
		else:
			if list_title.size() >= back_titl:
				break
			if titel_ok != "":
				var i_Test_item = Test_item.instantiate()
				get_node("c/s/v").add_child(i_Test_item)
				i_Test_item.text_ok_1(id ,titel_ok )
				list_title.append(i_Test_item)
				titel_ok = ""
				break
		id += 1
		

func _on_h_slider_value_changed(value):
	var set_list = []
	set_list = Run_lisr(value)
	objack_queue_free(value)
	for id in set_list:
		words_engine(G_Class.i_pr_Title[id])
	show_Label_Load(value)

func Run_lisr(value):
	var set_list = []
	var i  = value
	var j = value + back_titl
	while i < j  && i < (G_Class.i_pr_Title.size() / float(back_titl)):
		set_list.append(i)
		i += 1
	if set_list.size() < back_titl:
		set_list = range(int((G_Class.i_pr_Title.size() / float(back_titl))) - back_titl ,(int(G_Class.i_pr_Title.size() / float( back_titl))))
	return set_list

func objack_queue_free(value):
	if value < int(G_Class.i_pr_Title.size()/float(back_titl)):
		for objact in list_title:
			objact.queue_free()#Dele item
		list_title.clear()
	

func show_Label_Load(ver):
	var item_ok  = str(int(G_Class.i_pr_Title.size()/float(back_titl)) ," / " ,ver)
	$c/h2/HSlider.max_value =  int(G_Class.i_pr_Title.size()/float(back_titl))
	$c/h2/HSlider.value = ver
	$c/h/Label.text = item_ok
	
