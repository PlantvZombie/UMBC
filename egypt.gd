extends Control



func _ready():
	$TextureRect.texture = load("res://Sprite/Egypt_Background.png"	)
	

func _on_option_1_pressed():

	get_node("/root/GbScript").playerChoices = "1"
	buttonPress()


func _on_option_2_pressed():
	get_node("/root/GbScript").playerChoices = "2"
	buttonPress()


func _on_option_4_pressed():
	get_node("/root/GbScript").playerChoices = "3"
	buttonPress()


func buttonPress():
	$VBoxContainer/Option1.hide()
	$VBoxContainer/Option2.hide()
	$VBoxContainer/Option3.hide()
	$VBoxContainer/Label.text = flavorText(get_node("/root/GbScript").playerChoices)
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://greeb.tscn")

func flavorText(pathID):
	if pathID[0] == "1":
		return " "
	if pathID[0] == "2":
		return " "
	if pathID[0] == "3":
		return " "
func _on_option_1_mouse_entered():
	get_node("VBoxContainer/Option1").add_theme_font_size_override("font_size", 28)

func _on_option_1_mouse_exited():
	get_node("VBoxContainer/Option1").add_theme_font_size_override("font_size", 24)


func _on_option_2_mouse_entered():
	get_node("VBoxContainer/Option2").add_theme_font_size_override("font_size", 28)


func _on_option_2_mouse_exited():
	get_node("VBoxContainer/Option2").add_theme_font_size_override("font_size", 24)


func _on_option_4_mouse_entered():
	get_node("VBoxContainer/Option3").add_theme_font_size_override("font_size", 28)


func _on_option_4_mouse_exited():
	get_node("VBoxContainer/Option3").add_theme_font_size_override("font_size", 24)
