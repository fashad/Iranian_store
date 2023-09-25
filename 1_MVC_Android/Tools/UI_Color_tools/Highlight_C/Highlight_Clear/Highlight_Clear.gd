#Highlight_Clear
extends Node2D

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book
var i_Copy_L_R =[]
var fathers_address

func _ready():
	fathers_address = get_parent()
	Back_to_Zero()
	
# Back_to_Zero
func Back_to_Zero():
	
	$Highlight_Clear_Pen/TextureClear/CheckBox.button_pressed = false
	var pos = Vector2(15 ,110)
	$Highlight_Clear_Pen.position.x = int(pos.x)
	$Highlight_Clear_Pen.position.y = int(pos.y)
	


func _on_Button_back_pressed():
	G_Class.Copy_Painted_Select_R_L.clear()
	var Color_Data = load(G_Addras.Data_Color_And).new()
	G_Class.Load_Painted_Ones = Color_Data.file_load_Color()
	fathers_address.Common_between_Functions()
	visible = false


func _on_Button_Save_pressed():
	if G_Class.Load_Painted_Ones.size() == 4 && i_Copy_L_R.size() == 4:
		G_Class.Load_Painted_Ones = i_Copy_L_R
		var Color_Data = load(G_Addras.Data_Color_And).new()
		Color_Data.File_Save_Load()
		G_Class.Copy_Painted_Select_R_L.clear()
	fathers_address.Common_between_Functions()
  


func _on_Button_reset_pressed():
	var file_Tite = load(G_Addras.File_Tite).new()
	G_Class.Load_Painted_Ones = file_Tite._file_pont_load_ok()
	fathers_address.Show_Page_Perfuse_Update()
	Back_to_Zero()
