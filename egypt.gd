extends Control

var flavorText

func _ready():
	flavorText = "waaaa"
	$TextureRect.texture = load("res://Sprite/Egypt_Background.png"	)
	

func _on_option_1_pressed():

	get_node("/root/GbScript").playerChoices = 1
	buttonPress()


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
	$VBoxContainer/Option1.hide()
	$VBoxContainer/Option2.hide()
	$VBoxContainer/Option3.hide()
	$VBoxContainer/Option4.hide()
	$VBoxContainer/Label.text = flavorText
	await get_tree().create_timer(5).timeout
	get_tree().change_scene_to_file("res://greeb.tscn")
