extends Area2D



func _on_SenjataJatim_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata jawa timur diambil!")
	queue_free()
