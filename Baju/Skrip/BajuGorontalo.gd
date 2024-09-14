extends Area2D



func _on_BajuGorontalo_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju gorontalo diambil!")
	queue_free()
