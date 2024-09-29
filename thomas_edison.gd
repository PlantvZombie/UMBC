extends Control


func _ready():
	$TextureRect.texture = load("res://Sprite/Egypt_Background.png"	)

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
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://greeb.tscn")

func flavorText(pathID):
	if pathID[3] == "1":
		return "Edison harnessed the power of electricity into a coil that would arc electricity in all directions, mainly being used to carry wireless telegraphy."
	if pathID[3] == "2":
		return "Edison devoted much of his time researching how to create a practical and longer lasting source of light through the use of electricity, and ended up creating a small chamber full of carbon in which he ran electricity through filament to generate light."
	if pathID[3] == "3":
		return "Edison was researching ways to utilize electricity, and he ended up running electricity through metal and figuring out that it heated up. He used this to make a commercially available heater."
	if pathID[3] == "4":
		return "Edison was researching ways to convert electricity into other forms of energy, and in the process invented a way to convert electricity into mechanical energy through the use of batteries."

func _on_option_1_mouse_entered():
	get_node("VBoxContainer/Option1").add_theme_font_size_override("font_size", 24)


func _on_option_1_mouse_exited():
	get_node("VBoxContainer/Option1").add_theme_font_size_override("font_size", 20)


func _on_option_2_mouse_entered():
	get_node("VBoxContainer/Option2").add_theme_font_size_override("font_size", 24)


func _on_option_2_mouse_exited():
	get_node("VBoxContainer/Option2").add_theme_font_size_override("font_size", 20)


func _on_option_3_mouse_entered():
	get_node("VBoxContainer/Option3").add_theme_font_size_override("font_size", 24)


func _on_option_3_mouse_exited():
	get_node("VBoxContainer/Option3").add_theme_font_size_override("font_size", 20)


func _on_option_4_mouse_entered():
	get_node("VBoxContainer/Option4").add_theme_font_size_override("font_size", 24)


func _on_option_4_mouse_exited():
	get_node("VBoxContainer/Option4").add_theme_font_size_override("font_size", 20)
