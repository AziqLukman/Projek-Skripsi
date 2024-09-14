extends Area2D



func _on_SenjataKepri_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata kepulauan riau diambil!")
	queue_free()
