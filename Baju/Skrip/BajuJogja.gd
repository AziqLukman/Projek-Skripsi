extends Area2D



func _on_BajuJogja_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju jogja diambil!")
	queue_free()