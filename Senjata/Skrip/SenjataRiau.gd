extends Area2D



func _on_SenjataRiau_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata riau diambil!")
	queue_free()
