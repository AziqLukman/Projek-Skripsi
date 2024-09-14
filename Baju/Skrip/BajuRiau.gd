extends Area2D



func _on_BajuRiau_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju riau diambil!")
	queue_free()
