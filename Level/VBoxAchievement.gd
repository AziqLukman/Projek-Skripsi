extends VBoxContainer


func _on_Baju_pressed():
	get_tree().change_scene("res://Level/Baju1.tscn")


func _on_Senjata_pressed():
	get_tree().change_scene("res://Level/Senjata1.tscn")


func _on_Kembali_pressed():
	get_tree().change_scene("res://Level/MainMenu.tscn")
