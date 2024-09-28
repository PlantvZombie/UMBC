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
	if pathID == 111:
		return " "
	if pathID == 211:
		return " "
	if pathID == 311:
		return " "
	if pathID == 121:
		return " "
	if pathID == 221:
		return " "
	if pathID == 321:
		return " "
	if pathID == 131:
		return " "
	if pathID == 231:
		return " "
	if pathID == 331:
		return " "
	if pathID == 141:
		return " "
	if pathID == 241:
		return " "
	if pathID == 341:
		return " "
	if pathID == 112:
		return " "
	if pathID == 212:
		return " "
	if pathID == 312:
		return " "
	if pathID == 122:
		return " "
	if pathID == 222:
		return " "
	if pathID == 322:
		return " "
	if pathID == 132:
		return " "
	if pathID == 232:
		return " "
	if pathID == 332:
		return " "
	if pathID == 142:
		return " "
	if pathID == 242:
		return " "
	if pathID == 342:
		return " "
	if pathID == 113:
		return " "
	if pathID == 213:
		return " "
	if pathID == 313:
		return " "
	if pathID == 123:
		return " "
	if pathID == 223:
		return " "
	if pathID == 323:
		return " "
	if pathID == 133:
		return " "
	if pathID == 233:
		return " "
	if pathID == 333:
		return " "
	if pathID == 143:
		return " "
	if pathID == 243:
		return " "
	if pathID == 343:
		return " "
	if pathID == 114:
		return " "
	if pathID == 214:
		return " "
	if pathID == 314:
		return " "
	if pathID == 124:
		return " "
	if pathID == 224:
		return " "
	if pathID == 324:
		return " "
	if pathID == 134:
		return " "
	if pathID == 234:
		return " "
	if pathID == 334:
		return " "
	if pathID == 144:
		return " "
	if pathID == 244:
		return " "
	if pathID == 344:
		return " "



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
