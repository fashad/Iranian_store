#UI_Load_Data
extends Node2D

var G_Addras = Public_Addras

func _ready():
	$A_2.play("play")
#	Test_AND()
#	Test_WAB()
	Test_SER()
#	Test_CON()
	await get_tree().create_timer(1.0).timeout
#	G_Class.change_scene(G_Addras.UI_Registrationa)

func Test_AND():
	print("--hi--AND")
	Public_Class.change_scene(Public_Addras.UI_Start_Book)


func Test_WAB():
	print("--hi--WAB")
	Public_Class.change_scene(Public_Addras.UI_Start_WAB)

func Test_SER():
	print("--hi--SER")
	Public_Class.change_scene(Public_Addras.UI_Start_SER)
#	 

func Test_CON():
	print("--hi--CON")
	print("--hi--CON")
	Public_Class.change_scene(Public_Addras.UI_Start_CON)
#	 
