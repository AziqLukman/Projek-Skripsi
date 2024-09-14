extends Area2D



func _on_BajuSumut_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju sumatra utara diambil!")
	queue_free()
