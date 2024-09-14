extends Area2D



func _on_SenjataMalukuUtara_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata maluku utara diambil!")
	queue_free()
