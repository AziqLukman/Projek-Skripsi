extends Area2D



func _on_SenjataKaltim_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata kalimantan timur diambil!")
	queue_free()
