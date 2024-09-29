extends Control

var ableSkip = false

func _ready():
	$TextureRect.texture = load("res://Sprite/China_Background.png")

func _on_option_1_pressed():
	get_node("/root/GbScript").playerChoices += "1"
	buttonPress()


func _on_option_2_pressed():
	get_node("/root/GbScript").playerChoices += "2"
	buttonPress()


func _on_option_3_pressed():
	get_node("/root/GbScript").playerChoices += "3"
	buttonPress()


func _on_option_4_pressed():
	get_node("/root/GbScript").playerChoices += "4"
	buttonPress()

func buttonPress():
	$VBoxContainer/Option1.hide()
	$VBoxContainer/Option2.hide()
	$VBoxContainer/Option3.hide()
	$VBoxContainer/Option4.hide()
	$VBoxContainer/Label.text = flavorText(get_node("/root/GbScript").playerChoices)
	ableSkip = true
	await get_tree().create_timer(6).timeout
	get_tree().change_scene_to_file("res://thomas_edison.tscn")


func flavorText(pathID):
	if pathID[2] == "1":
		return "A modified version of the blowgun, where instead of using the power of breath, it is handheld and a small explosion using gunpowder is triggered in order to launch the dart."
	if pathID[2] == "2":
		return "As China advanced their quality of gunpowder, their gunpowder eventually had enough power to launch heavy rocks, and they repurposed this into a contained explosion that would launch a heavy iron ball in order to tear down the defenses of their enemies."
	if pathID[2] == "3":
		return "Initially in the form of a small pyrotechnic device on the end of polearms, China developed the fire lance into one of the earliest gunpowder weapons, spraying shrapnel a short distance from the end of the polearm."
	if pathID[2] == "4":
		return "China’s high quality gunpowder was used in a way that took inspiration from ancient Roman use of Greek Fire, and involved shoving it inside of a condensed space of relatively weak material, lighting a fuse on top before throwing it into enemy lines and showering them with shrapnel."



func _on_option_1_mouse_entered():
	get_node("VBoxContainer/Option1").add_theme_font_size_override("font_size", 28)


func _on_option_1_mouse_exited():
	get_node("VBoxContainer/Option1").add_theme_font_size_override("font_size", 24)


func _on_option_2_mouse_entered():
	get_node("VBoxContainer/Option2").add_theme_font_size_override("font_size", 28)


func _on_option_2_mouse_exited():
	get_node("VBoxContainer/Option2").add_theme_font_size_override("font_size", 24)


func _on_option_3_mouse_entered():
	get_node("VBoxContainer/Option3").add_theme_font_size_override("font_size", 28)


func _on_option_3_mouse_exited():
	get_node("VBoxContainer/Option3").add_theme_font_size_override("font_size", 24)


func _on_option_4_mouse_entered():
	get_node("VBoxContainer/Option4").add_theme_font_size_override("font_size", 28)


func _on_option_4_mouse_exited():
	get_node("VBoxContainer/Option4").add_theme_font_size_override("font_size", 24)

func _process(delta):
	if Input.is_anything_pressed() and ableSkip:
		get_tree().change_scene_to_file("res://thomas_edison.tscn")
