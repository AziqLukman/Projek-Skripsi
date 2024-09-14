extends Area2D



func _on_SenjataSumbar_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata Sumatra Barat diambil!")
	queue_free()
