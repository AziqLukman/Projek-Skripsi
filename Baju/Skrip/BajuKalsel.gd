extends Area2D



func _on_BajuKalsel_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju kalimantan selatan diambil!")
	queue_free()
