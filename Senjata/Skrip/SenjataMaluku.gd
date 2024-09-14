extends Area2D



func _on_SenjataMaluku_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata maluku diambil!")
	queue_free()
