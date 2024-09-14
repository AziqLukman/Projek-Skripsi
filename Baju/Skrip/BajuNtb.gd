extends Area2D



func _on_BajuNtb_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju nusa tenggara barat diambil!")
	queue_free()
