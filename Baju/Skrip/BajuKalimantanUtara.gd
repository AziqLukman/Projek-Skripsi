extends Area2D



func _on_BajuKalimantanUtara_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju kalimantan utara diambil!")
	queue_free()