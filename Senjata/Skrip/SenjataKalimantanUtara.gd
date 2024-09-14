extends Area2D



func _on_SenjataKalimantanUtara_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata Kalimantan Utara diambil!")
	queue_free()
