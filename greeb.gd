extends Control



func _ready():
	$TextureRect.texture = load("res://Sprite/Egypt_Background.png"	)
	print("12345"[1])
	
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
	get_tree().change_scene_to_file("res://china.tscn")

func flavorText(pathID):
	if pathID[1] == "1":
		return "Cleisthenes, deemed the “Father of Democracy”, created Athenian Democracy, a primitive form of Direct Democracy that would pave the way for future representative democracies."
	if pathID[1] == "2":
		return "Cleisthenes, tired of the tyrannus control over Greece, invented Meritocracy in order to ensure that only knowledgeable and meritable people were put into power. He was then executed for treason."
	if pathID[1] == "3":
		return "Cleisthenes, worried about the negative effects of control through Tyranny, suggested the idea of Enlightened Absolutism, where the oligarchy could rule while abiding by the ideas of natural law, liberty, and the separation of church and state. His idea was deemed too radical and he was imprisoned for 5 years."
	if pathID[1] == "4":
		return "Cleisthenes, hoping for the best for Greece, created Noocracy as a way to make it so that only those deemed wisest were elected so as to have the best decisions possible made. The oligarchy in control of Greece at this time partially adapted this."

func _on_option_1_mouse_entered():
	get_node("VBoxContainer/Option1").add_theme_font_size_override("font_size", 20)

func _on_option_1_mouse_exited():
	get_node("VBoxContainer/Option1").add_theme_font_size_override("font_size", 16)


func _on_option_2_mouse_entered():
	get_node("VBoxContainer/Option2").add_theme_font_size_override("font_size", 20)


func _on_option_2_mouse_exited():
	get_node("VBoxContainer/Option2").add_theme_font_size_override("font_size", 16)


func _on_option_3_mouse_entered():
	get_node("VBoxContainer/Option3").add_theme_font_size_override("font_size", 20)


func _on_option_3_mouse_exited():
	get_node("VBoxContainer/Option3").add_theme_font_size_override("font_size", 16)


func _on_option_4_mouse_entered():
	get_node("VBoxContainer/Option4").add_theme_font_size_override("font_size", 20)


func _on_option_4_mouse_exited():
	get_node("VBoxContainer/Option4").add_theme_font_size_override("font_size", 16)
