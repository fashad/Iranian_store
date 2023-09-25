#Dir_Foldeer
#ساخت فودر گفته شده
extends Node

var my_book :String ="my_book"
var All_Book :String ="All_Book"
var My_Account :String ="My_Account"
var My_Setting :String ="My_Setting"
var Free_Book_Address :String = "Free_Book_Address"

func Start_Foldeer():
	Run_Dir_Foldeer_my_book()
	Dir_Make_ok(my_book ,All_Book)
	Dir_Make_ok(my_book ,My_Account)
	Dir_Make_ok(my_book ,My_Setting)
	Dir_Make_ok(my_book ,Free_Book_Address)

func Sarsh_Addass(ver):
	var Search_Folder = load(Public_Addras.Search_Folder).new()
	var i_dir = Search_Folder.get_name_folder(ver)
	return i_dir

func Run_Dir_Foldeer_my_book():
	var i_My_Dir_Access = My_Dir_Access.new()
	var i_darss = str(Public_Addras.user)
	i_My_Dir_Access.Dir_Make(i_darss ,my_book)

func Dir_Make_ok(ver_1 ,ver_2):
	var i_My_Dir_Access = My_Dir_Access.new()
	var i_darss = Sarsh_Addass(ver_1) + "/"
	i_My_Dir_Access.Dir_Make(i_darss ,ver_2)
 
