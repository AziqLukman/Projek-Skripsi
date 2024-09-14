extends VBoxContainer


func _on_TombolMain_pressed():
	get_tree().change_scene("res://Level/Level1.tscn")


func _on_TombolKeluar_pressed():
	get_tree().quit()
