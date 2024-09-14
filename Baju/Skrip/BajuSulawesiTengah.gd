extends Area2D



func _on_BajuSulawesiTengah_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju sulawesi tengah diambil!")
	queue_free()
