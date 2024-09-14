extends VBoxContainer


func _on_Main_pressed():
	get_tree().change_scene("res://Level/MainMenu.tscn")


func _on_Keluar_pressed():
	get_tree().quit()
