extends Area2D



func _on_SenjataSulawesiBarat_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata sulawesi barat diambil!")
	queue_free()
