#Transparency color
# کلاس نگهداری کد های  رنگ برنامه
extends Node



#const Color_White :Color = Color(1 ,1 ,1 ,1)#White
#const Color_Black :Color = Color(0 ,0 ,0 ,1)#Black
#const Color_Yellowing :Color = Color(1 ,1 , 0 ,1)#Yellowing
#const Color_Blue :Color = Color(0 ,0.18 ,1 ,1)#Blue
const Color_Red :Color = Color(1 ,0.11 ,0 ,1)#Red
const Color_Purple :Color = Color(0.60 ,0.1 ,1 ,1)#Purple
const Color_Defall_white: Color = Color(1 ,1 ,1 ,1)#white
const Color_Pale_Blue: Color = Color(0 ,0.97 ,0.99 ,1)#white


func  i_Color_White(ver :int):
	var Color_White :Color = Color(1 ,1 ,1 ,ver)
	return Color_White
	
	
func  i_Color_Black(ver :int):
	var Color_Black :Color = Color(0 ,0 ,0 ,1)
	return Color_Black
	
	
func  i_Color_Yellowing(ver :int):
	var Color_Yellowing :Color = Color(1 ,1 , 0 ,1)
	return Color_Yellowing
	
func  i_Color_Blue(ver :int):
	var Color_Blue :Color =  Color(0 ,0.18 ,1 ,1)
	return Color_Blue
	
	
