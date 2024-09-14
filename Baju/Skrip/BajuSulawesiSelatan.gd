extends Area2D



func _on_BajuSulawesiSelatan_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju sulawesi selatan diambil!")
	queue_free()
