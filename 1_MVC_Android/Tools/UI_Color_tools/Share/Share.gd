#Share
extends Node2D

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book

var file_Tite = load(G_Addras.File_Tite).new()
var Share_Data
var android_ok = true
#var Copy_Share_Right_Left :Array
var Copy_Right :int = -1
var Copy_Left :int = -1

func _ready():
	Back_to_Zero()

func Sort_copy_List():
	if visible:
#		G_Erorr_Excepttrans.new().Show_print(G_Addras.Class_Color_tools," 3_Share " ,G_Erorr_Excepttrans.new().Color_tools)
		G_Class.Copy_Painted_Select_R_L.clear()
		var arrsy :Array = []
		arrsy.append(Copy_Left)
		arrsy.append(Copy_Right)
		arrsy.sort()
		for i in range(arrsy[0] ,arrsy[1]):
			G_Class.Copy_Painted_Select_R_L.append(int(i))
		
		get_parent().Show_Page_Perfuse_Update()
	pass
	
# Back_to_Zero
func Back_to_Zero():
	if visible:
		Copy_Left = G_Class.i_split_5[0].i_id
		Copy_Right = G_Class.i_split_5[0].i_id
		Sort_copy_List()
		var pos = Vector2(15 ,100)
		$Color_tools_Left.position.x = int(pos.x)
		$Color_tools_Left.position.y = int(pos.y)
		$Color_tools_Right.position.x = 35
		$Color_tools_Right.position.y =int(pos.y)


func _on_Button_back_pressed():
	visible = false


func _on_Button_reset_pressed():
	Back_to_Zero()

	
func _on_Button_Share_pressed():
	var list_Share_Data = ""
	for i in G_Class.i_split_5:
#		if i.i_id in range(G_Class.Copy_Share_Right_Left[0] ,G_Class.Copy_Share_Right_Left[1]+1):
		if i.i_id in G_Class.Copy_Painted_Select_R_L:
			if i_i_name_ok(i.i_name):
				list_Share_Data = list_Share_Data +" "+ i.i_name
	if "Android" == G_Class.name_OS:
		Share_Data = Engine.get_singleton("HelloWorld")
		Share_Data.connect("testSignal" ,self ,"on_testSignal")
		Share_Data.shareText(list_Share_Data)# پیام ارسالی
#	G_Erorr_Excepttrans.new().Show_print(G_Addras.Class_UI_Launchers ,"Share...\n"+list_Share_Data ,G_Erorr_Excepttrans.new().Toush)                    
	get_parent().Common_between_Functions()
	Back_to_Zero()


#i_i_name_ok
func i_i_name_ok(i_name)-> bool:
	match i_name:
		"÷":
			return false
		" ÷":
			return false
		"÷ ":
			return false
		" ÷ ":
			return false
		"×":
			return false
		"× ":
			return false
		" ×":
			return false
		" × ":
			return false
		" * ":
			return false
		"* ":
			return false
		" *":
			return false
		"*":
			return false
		"$":
			return false
		" $":
			return false
		"$ ":
			return false
		" $ ":
			return false
		_:
			return true


	
	
