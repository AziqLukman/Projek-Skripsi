extends Area2D



func _on_BajuKalbar_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju kalimantan barat diambil!")
	queue_free()
