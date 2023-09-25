#UI_1_Show_Page
extends Node2D

var G_Addras = Public_Class.G_And_Addras
var UI_Launchers 
var i_Result_division = load(G_Addras.i_Result_division).new()
var G_Class = Public_Class.G_Book
var No_off = false

func _ready():
#	UI_Launchers = get_tree().current_scene
	UI_Launchers = get_parent()
	Perfuse_Next()
 
func Perfuse_Next():
	i_Result_division.Perfuse_Next()
	Inject_values()
	pass


func Perfuse_Update():
	i_Result_division.Perfuse_Update()
	words_engine()
	Inject_values()

func Perfuse_Back():
	i_Result_division.Perfuse_Back()
	Inject_values()


func Inject_values():
	words_engine()
	$View/v/C/v/V/box/x/View/S_1.spawn_pieces()
	UI_Launchers.UI_3_Menu().Show_Taskber()


#words_engine()
func words_engine():
	G_Class.i_split_5.clear()
#	print("v ",G_Class.Marking, " <> ", G_Class.next_step)
	for i in range(G_Class.Marking, G_Class.next_step):
		if 0 < G_Class.i_pr_Page_1.size() &&  i < G_Class.i_pr_Page_1.size() :
			G_Class.i_split_5.append(G_Class.i_pr_Page_1[i])
		else:
			G_Class.next_step = G_Class.i_pr_Page_1.size()
			G_Class.Marking = G_Class.next_step - G_Class.Word_count_and_break
