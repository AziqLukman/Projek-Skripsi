extends VBoxContainer


func _on_Level_pressed():
	get_tree().change_scene("res://Level/MenuLevel.tscn")

func _on_Tutorial_pressed():
	get_tree().change_scene("res://Level/Tutorial.tscn")

func _on_Achievement_pressed():
	get_tree().change_scene("res://Level/Achievement.tscn")

func _on_Kembali_pressed():
	get_tree().change_scene("res://Level/Title.tscn")
