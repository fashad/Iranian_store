#UI_Load_CON
extends Node2D

var G_Addras = Public_Class.G_Addras_Connection
 
func _ready():
	var Contact_http_requeest = load(G_Addras.Contact_http_requeest).instantiate()
	add_child(Contact_http_requeest)
	Contact_http_requeest.Start_ok()
#	Contact_http_requeest.visible = false
