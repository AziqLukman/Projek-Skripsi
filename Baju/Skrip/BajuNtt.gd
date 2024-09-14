extends Area2D



func _on_BajuNtt_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju nusa tenggara timur diambil!")
	queue_free()
