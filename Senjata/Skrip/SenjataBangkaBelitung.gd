extends Area2D



func _on_SenjataBangkaBelitung_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata bangka belitung diambil!")
	queue_free()
