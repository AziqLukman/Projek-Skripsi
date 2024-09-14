extends Area2D



func _on_SenjataKalimantanTengah_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata kalimantan tengah diambil!")
	queue_free()
