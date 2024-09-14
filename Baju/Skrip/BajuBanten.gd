extends Area2D



func _on_BajuBanten_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()

func pickup():
	print("item baju banten diambil!")
	queue_free()
