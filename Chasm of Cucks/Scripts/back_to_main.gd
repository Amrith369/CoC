extends Control

var selected = "null"


func _ready():
	$PlayerSelectRows/RowOrganizer/ColumnOrganizer/Select1.grab_focus()
	
func _on_Button_pressed():
	get_tree().change_scene('res://MainMenuFinal.tscn')

func _process(delta):
	if (selected !=$PlayerSelectRows.characterSelected):
		selected = $PlayerSelectRows.characterSelected
		if (selected == "amrith"):
			print("Amrith Selected.")
			$SelectSound.play()
			$Profiles/Amrith.show()
			$Profiles/Skeptic.hide()
			$Profiles/Chris.hide()
			$Profiles/CHL.hide()
			
		elif (selected == "armoredSkeptic"):
			print("Armored Skeptic Selected.")
			$Profiles/Skeptic.show()
			$Profiles/Amrith.hide()
			$Profiles/Chris.hide()
			$SelectSound.play()
			
		elif (selected == "chrisRayGun"):
			print("Chris Ray Gun Selected.")
			$Profiles/Chris.show()
#			$Profiles/Amrith.hide()
			$Profiles/Skeptic.hide()
			$Profiles/CHL.hide()
			$SelectSound.play()
			
		elif (selected == "chl"):
			print("Cool Hard Logic Selected.")
			$Profiles/CHL.show()
			$Profiles/Amrith.hide()
			$Profiles/Chris.hide()
			$SelectSound.play()
			
		elif (selected == "logicked"):
			print("Logicked Selected.")
			$Profiles/Amrith.hide()
			$Profiles/Skeptic.hide()
			$SelectSound.play()
			
		elif (selected == "martymer"):
			print("Martymer81 Selected.")
			$Profiles/Amrith.hide()
			$SelectSound.play()
			
		elif (selected == "sargon"):
			print("Sargon Selected.")
			$Profiles/Amrith.hide()
			$SelectSound.play()
			
		elif (selected == "shoeOnHead"):
			print("ShoeOnHead Selected.")
			$Profiles/Amrith.hide()
			$SelectSound.play()
			
		else: pass
	if ($PlayerSelectRows.confirm == true):
		$PlayerSelectRows.hide()
		$ColorRect.show()
		$AnimationPlayer.play("confirm_fade")
		$ColorRect/Yes.grab_focus()
		$PlayerSelectRows.confirm = false
		
#CONFIRM SELECTION
func _on_Yes_pressed():
	get_node("/root/global").currentChar = selected
	get_tree().change_scene("res://Cukkad.tscn")
	
func _on_No_pressed():
	$PlayerSelectRows.confirm = false
	$ColorRect.hide()
	$PlayerSelectRows.show()
	$PlayerSelectRows/RowOrganizer/ColumnOrganizer/Select1.grab_focus()
	get_node("/root/global").currentChar = "null"
