extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	$Return.grab_focus()

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Return_pressed():
	get_tree().change_scene("res://MainMenuFinal.tscn")
