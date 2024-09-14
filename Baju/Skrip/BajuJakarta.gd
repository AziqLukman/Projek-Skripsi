extends Area2D



func _on_BajuJakarta_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju jakarta diambil!")
	queue_free()
