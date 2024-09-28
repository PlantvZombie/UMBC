extends Control

var flavorText
var phase = 0

func _ready():
	flavorText = "waaaa"
	

func _on_option_1_pressed():
	if phase == 0:
		get_node("/root/GbScript").playerChoices = 1
		buttonPress()
	elif phase == 1:
		get_tree().change_scene_to_file("self")
	


func _on_option_2_pressed():
	get_node("/root/GbScript").playerChoices = 2
	buttonPress()


func _on_option_3_pressed():
	get_node("/root/GbScript").playerChoices = 3
	buttonPress()


func _on_option_4_pressed():
	get_node("/root/GbScript").playerChoices = 4
	buttonPress()


func buttonPress():
	phase = 1
	$VBoxContainer/Option1.text = "next"
	$VBoxContainer/Option2.hide()
	$VBoxContainer/Option3.hide()
	$VBoxContainer/Option4.hide()
	$VBoxContainer/Label.text = flavorText
