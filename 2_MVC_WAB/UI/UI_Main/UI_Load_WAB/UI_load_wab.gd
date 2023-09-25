#UI_Load_WAB
extends Node2D

var G_Addras = Public_Class.G_Book_Addras_Store
var G_Class = Public_Class.G_Store

func _ready():
	$A_2.play("play")
	Object_Construction()
	
	await get_tree().create_timer(1.0).timeout
	Public_Class.change_scene(G_Addras.UI_Launchers_wab)
	



func Object_Construction():
	var making_objects = load(G_Addras.Making_objects_in_the_book).new()
	G_Class.pack_book_addras = making_objects.Making_objects()
#	print(G_Class.pack_book_addras.size())
#	print(G_Class.pack_book_addras[0].i_d)
