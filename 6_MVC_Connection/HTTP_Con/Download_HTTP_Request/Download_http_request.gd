#Download_HTTP_Request
extends Node2D


var Adrass_my_assets = load(G_Addras.Adrass_my_assets).new()

var url :String 
var Create_folder:String
var path:String
var path_img:String
var cont_ok = 0



func  start_Dwonload(ver_1 ,ver_2 ,ver_3):
	url = ver_1
	Adrass_my_assets.get_files(G_Addras.OS_addres_file)
	Create_folder = Generating_name_of_book()
	download_file(ver_2)
	New_folder(ver_2)
	if ver_3:
		download_img(ver_2 ,ver_3)
#		print("hiff")

func download_img(ver_2,ver_3):
	path = str(G_Class.crest_foldr[ver_2],Create_folder)
#	var i_path = str(path,"/" ,Create_folder,G_Addras.imag_png)
	var i_img = str(path,"/" ,"img_pictues",G_Addras.imag_png)
	if ver_3 !="":
		var http_ok = HTTPRequest.new()
		add_child(http_ok)
		http_ok.set_download_file(i_img)
		http_ok.request(ver_3)
	FileAccess.open(i_img,FileAccess.READ_WRITE)

func download_file(ver_2):
	path = str(G_Class.crest_foldr[ver_2],Create_folder)
	var i_path = str(path,"/" ,Create_folder,G_Addras.tres)
	if url !="":
#		$HTTPRequest.set_download_file(i_path)
#		$HTTPRequest.request(url)
		var http_ok = HTTPRequest.new()
		add_child(http_ok)
		http_ok.set_download_file(i_path)
		http_ok.request(url)
		G_Class.crest_foldr.append(i_path)
#	path = i_path
func _process(_delta):
	var arr =float($HTTPRequest.get_downloaded_bytes())
	var total =float($HTTPRequest.get_body_size())
#	print(str("Don_Size ",arr," KB\n","load  ",total," KB"))
	if arr == total :
		G_Erorr_Excepttrans.new().Show_print("Download_HTTPRequest" ,"finsh download")
#		print("arr " ,arr ," | " ,total)
		end_finsh()


#New_folder
func New_folder(ver):
#	var i_address = str(G_Addras.user ,G_Addras.my_book,"/",G_Addras.All_book)
	path = str(G_Class.crest_foldr[ver],Create_folder)
	var i_address = str(path)
	Adrass_my_assets.Create_folder_addras(i_address)

#Generating_name_of_book
func Generating_name_of_book():
	var i_Create_folder =""
	for i in url.get_file():
		if i != ".":
			i_Create_folder = i_Create_folder + i
		else:
			break
	return i_Create_folder


func _on_timer_timeout():
	cont_ok +=1
	if cont_ok == 5:
		end_finsh()

func end_finsh():
	queue_free()

 
