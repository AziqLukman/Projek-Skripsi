extends Area2D



func _on_SenjataJakarta_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata jakarta diambil!")
	queue_free()
