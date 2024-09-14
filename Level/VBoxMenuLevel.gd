extends VBoxContainer



func _on_Level1_pressed():
	get_tree().change_scene("res://Percakapan/Level1/Stroryline.tscn")


func _on_Level2_pressed():
	get_tree().change_scene("res://Percakapan/Level2/Storyline.tscn")


func _on_Kembali_pressed():
	get_tree().change_scene("res://Level/MainMenu.tscn")


func _on_Level3_pressed():
	get_tree().change_scene("res://Percakapan/Level3/Storyline.tscn")
