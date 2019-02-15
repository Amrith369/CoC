extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var id = 0

func _ready():
	$Button.grab_focus()

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func rollMedals():
	match id:
		0:
			$Menu/Label/LeftScroll.disabled=true
			$Menu/MedalSection2.hide()
			$Menu/MedalSection1.show()
			$Menu/Label/RightScroll.grab_focus()
		1:
			$Menu/Label/LeftScroll.disabled=false 
			$Menu/Label/RightScroll.disabled= false 
			$Menu/MedalSection1.hide()
			$Menu/MedalSection3.hide()
			$Menu/MedalSection2.show()
		2:
			$Menu/Label/RightScroll.disabled=true
			$Menu/MedalSection2.hide()
			$Menu/MedalSection3.show()
			$Menu/Label/LeftScroll.grab_focus()


func _on_LeftScroll_pressed():
	id -=1
	rollMedals()

func _on_RightScroll_pressed():
	id +=1
	rollMedals()


func _on_Button_pressed():
	get_tree().change_scene('res://MainMenuFinal.tscn')
