extends Area2D



func _on_SenjataNtt_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata Nusa tenggara timur diambil!")
	queue_free()
