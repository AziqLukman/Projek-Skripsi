extends Area2D



func _on_SenjataGorontalo_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata gorontalo diambil!")
	queue_free()
