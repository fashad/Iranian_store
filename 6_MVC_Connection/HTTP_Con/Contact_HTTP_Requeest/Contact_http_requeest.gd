#Contact_HTTP_Requeest
extends Node2D

var i_phone
var i_pass
var adrss = Home_Address.new()

func Start_ok():
	Start_HTTPRequest()
	
	

func Start_HTTPRequest():
	var http_requset = HTTPRequest.new()
	add_child(http_requset)
	http_requset.set_use_threads(true)
	http_requset.request_completed.connect(Callable(self ,"doSomethiong"))
	var data = {
		"i_name":"farshad",
		"i_email":"farshad@gamil.com",
		"i_password":"12345678",
		"i_Repeat_password":"12345678"
	}
	var query = JSON.stringify(data ,"\t")
#	print(query)
	var headers =["Content-Type: applicationn/json"]
#	http_requset.request("http://localhost/sh711/section1/a1.php" , headers,HTTPClient.METHOD_POST ,query)
	http_requset.request(adrss.i_Home_Address , headers,HTTPClient.METHOD_POST ,query)

func  doSomethiong(result ,reponse_code ,headers ,booy):
	var data = booy.get_string_from_utf8()
	G_Erorr_Excepttrans.new().Show_print("<--Login_HTTP_Request-->" ,data)
	var sss =  data.split(" ")
#	print(data)
	for i in sss:
		print(i)

	
#	print(result ,headers ,reponse_code)
#	var date =JSON.parse_string(booy.get_string_from_utf8())
	if result == 2:
		print("مشکل در اارطبات انترنت")

 

func _on_button_pressed():
	Start_ok()
