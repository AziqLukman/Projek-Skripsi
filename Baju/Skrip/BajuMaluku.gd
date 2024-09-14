extends Area2D



func _on_BajuMaluku_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju maluku diambil!")
	queue_free()
