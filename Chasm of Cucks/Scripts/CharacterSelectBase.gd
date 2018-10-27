extends Control

var characterSelected = "null"
var confirm = false


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

#CHARACTER HOVER
func _on_Select1_focus_entered():
	characterSelected = "amrith" 


func _on_Select2_focus_entered():
	characterSelected = "armoredSkeptic"


func _on_Select3_focus_entered():
	characterSelected = "chrisRayGun"


func _on_Select4_focus_entered():
	characterSelected = "chl"


func _on_Select5_focus_entered():
	characterSelected = "logicked"


func _on_Select6_focus_entered():
	characterSelected =  "martymer"


func _on_Select7_focus_entered():
	characterSelected = "sargon" 


func _on_Select8_focus_entered():
	characterSelected = "shoeOnHead"

#BUTTON PRESSED
func _on_Select1_pressed():
	confirm = true
	$RowOrganizer/ColumnOrganizer/Select1.disabled
#	get_node("/root/global").currentChar = "amrith"

func _on_Select2_pressed():
	confirm = true
	$RowOrganizer/ColumnOrganizer/Select2.disabled
#	get_node("/root/global").currentChar = "armoredSkeptic"

func _on_Select3_pressed():
	confirm = true
	$RowOrganizer/ColumnOrganizer/Select3.disabled
#	get_node("/root/global").currentChar = "chrisRayGun"

func _on_Select4_pressed():
	confirm = true
	$RowOrganizer/ColumnOrganizer/Select4.disabled
#	get_node("/root/global").currentChar = "chl"

func _on_Select5_pressed():
	confirm = true
	$RowOrganizer/ColumnOrganizer2/Select5.disabled
#	get_node("/root/global").currentChar = "logicked"

func _on_Select6_pressed():
	confirm = true
	$RowOrganizer/ColumnOrganizer2/Select6.disabled
#	get_node("/root/global").currentChar = "martymer"

func _on_Select7_pressed():
	confirm = true
	$RowOrganizer/ColumnOrganizer2/Select7.disabled
#	get_node("/root/global").currentChar = "sargon"

func _on_Select8_pressed():
	confirm = true
	$RowOrganizer/ColumnOrganizer2/Select8.disabled
#	get_node("/root/global").currentChar = "shoeOnHead"