extends Area2D



func _on_SenjataKalsel_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata Kalimantan selatan diambil!")
	queue_free()
