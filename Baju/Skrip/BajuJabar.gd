extends Area2D



func _on_BajuJabar_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju jabar diambil!")
	queue_free()
