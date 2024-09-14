extends Area2D



func _on_BajuKepri_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju kepulauan riau diambil!")
	queue_free()
