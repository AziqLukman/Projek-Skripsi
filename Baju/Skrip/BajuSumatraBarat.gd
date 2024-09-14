extends Area2D



func _on_BajuSumatraBarat_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju sumatra barat diambil!")
	queue_free()
