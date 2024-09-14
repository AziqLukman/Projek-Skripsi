extends HBoxContainer


func _ready():
	rect_position = Vector2 (22 , 0)


func _on_Button_pressed():
	get_tree().change_scene("res://InfoBaju.tscn")
