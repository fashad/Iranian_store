#UI_End_Book 
#پایان کتاب
extends Node2D

var G_Addras = Public_Class.G_And_Addras
var G_Class = Public_Class.G_Book

func _ready():
	G_Addras.queue_free()
	G_Class.queue_free()
	Public_Class.change_scene(Public_Addras.UI_Start_WAB)

#
#func end_objkact():
#	for i in G_Class.i_objck.size():
#		get_tree().queue_delete(G_Class.i_objck[i])
#		if i < G_Class.array_St_Body.size():
#			get_tree().queue_delete(G_Class.array_St_Body[i])
#		i.queue_free()
#	for i in G_Class.array_St_Body:
#		get_tree().queue_delete(i)
##		i.queue_free()
#		i.free()

#func End():
	#	end_objkact()
#	G_Class.array_St_Body.clear()
#	G_Class.i_objck.clear()
#	G_Class.i_split_5.clear()
#	G_Class.contant_ok = 0
#	G_Class.Marking = 0 #Start Word 0
#	G_Class.next_step = 0
##	get_parent().get_parent().end_UI_Launchers_And()
	pass
