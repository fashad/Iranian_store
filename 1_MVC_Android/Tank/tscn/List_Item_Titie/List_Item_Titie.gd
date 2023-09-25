#List_Item_Titie
extends Label

var G_Class = Public_Class.G_Book
var id_tite: int

func text_ok_1(ver_id ,ver_titie):
	self.id_tite = ver_id
	text = str("  ",ver_titie)



func _on_TouchScreenButton_pressed():
	G_Class.contant_ok = int(id_tite  /float( G_Class.Word_count_and_break))
	G_Class.contant_ok += 1
	G_Class.next_step = G_Class.contant_ok * G_Class.Word_count_and_break
	G_Class.Marking = G_Class.next_step - G_Class.Word_count_and_break
	get_parent().get_parent().get_parent().get_parent().Go_to_Item()
#	print(G_Class.contant_ok)
#	print(id_tite," |> ",G_Class.Marking ," <> " ,G_Class.next_step)
	pass

