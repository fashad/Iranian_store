#List_Item_My_Book
extends Label

var i_ver
var UI_Launchers 

func get_book(ver):
	self.i_ver = ver
	show_butn()
	but_wie_1()

func show_butn():
	if i_ver.size() == 3:
		$but_0.visible = true
		$but_1.visible = true
		$but_2.visible = true
	elif i_ver.size() == 2:
		$but_0.visible = true
		$but_1.visible = true
		$but_2.visible = false
	else :
		$but_0.visible = true
		$but_1.visible = false
		$but_2.visible = false
	pass



func addrass_parent(ver):
#	print("sssv  " ,i_ver[ver].i_d)
#	print("ccc " ,i_ver[ver].i_adrass)
	Load_Run_my_Book.new().book_Run_set(i_ver[ver])
	get_parent().get_parent().get_parent().selection_book()


  
func but_wie_1():
	var image =[]
	var image_load =[]
	image = image_Shwo_Addrs()
	image_load = image_load_incon(image)
	$but_0.texture_normal = image_load[0]
	$but_1.texture_normal = image_load[1]
	$but_2.texture_normal = image_load[2]

func image_Shwo_Addrs():
	var image = []
	var image_0
	var image_1
	var image_2
	if i_ver.size() == 3:
		if i_ver[0].i_image_view != "null":
			image_0 = Image.load_from_file(str(i_ver[0].i_d ,"/" ,i_ver[0].i_image_view))
		if i_ver[1].i_image_view != "null":
			image_1 = Image.load_from_file(str(i_ver[1].i_d ,"/" ,i_ver[1].i_image_view))
		if i_ver[2].i_image_view != "null":
			image_2 = Image.load_from_file(str(i_ver[2].i_d ,"/" ,i_ver[2].i_image_view))
	elif i_ver.size() == 2:
		if i_ver[0].i_image_view != "null":
			image_0 = Image.load_from_file(str(i_ver[0].i_d ,"/" ,i_ver[0].i_image_view))
		if i_ver[1].i_image_view != "null":
			image_1 = Image.load_from_file(str(i_ver[1].i_d ,"/" ,i_ver[1].i_image_view))
	elif i_ver.size() == 1:
		if i_ver[0].i_image_view != "null":
			image_0 = Image.load_from_file(str(i_ver[0].i_d ,"/" ,i_ver[0].i_image_view))
	image.append(image_0)
	image.append(image_1)
	image.append(image_2)
	return image

func image_load_incon(image):
	var addrs :String ="res://9_My_assets/1_assats/A_53.png"
	var img = Image.load_from_file(addrs)
	var ver_1 ="<Object#null>"
	var ver_2 ="null"
	var texture =[]
	var texture_0 
	var texture_1
	var texture_2 
	if ver_1 == str(image[0]) || ver_2 in str(image[0]):
		texture_0 = ImageTexture.create_from_image(img)
	else:
		texture_0 = ImageTexture.create_from_image(image[0])
	if ver_1 == str(image[1]) || ver_2 in str(image[1]):
		texture_1 = ImageTexture.create_from_image(img)
	else:
		texture_1 = ImageTexture.create_from_image(image[1])
	if ver_1 == str(image[2]) || ver_2 in str(image[2]):
		texture_2 = ImageTexture.create_from_image(img)
	else:
		texture_2 = ImageTexture.create_from_image(image[2])
	
	texture.append(texture_0)
	texture.append(texture_1)
	texture.append(texture_2)
	return texture

func _on_but_1_pressed():
	addrass_parent(0)


func _on_but_2_pressed():
	addrass_parent(1)


func _on_but_3_pressed():
	addrass_parent(2)
