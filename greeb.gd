extends Control

func _on_option_1_pressed():
	get_tree().change_scene_to_file("res://china.tscn")


func _on_option_2_pressed():
	get_tree().change_scene_to_file("res://china.tscn")


func _on_option_3_pressed():
	get_tree().change_scene_to_file("res://china.tscn")


func _on_option_4_pressed():
	get_tree().change_scene_to_file("res://china.tscn")


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
