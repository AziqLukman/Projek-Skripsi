extends Area2D



func _on_BajuBali_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju bali diambil!")
	queue_free()
