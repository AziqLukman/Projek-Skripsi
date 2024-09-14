extends Area2D



func _on_SenjataJabar_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata jawa barat diambil!")
	queue_free()
