extends Area2D


func pickup():
	print("item baju jambi diambil!")
	queue_free()


func _on_BajuJambi_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
