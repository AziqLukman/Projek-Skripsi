extends Area2D

func _on_SenjataAceh_body_entered(body):
	if body.is_in_group("Player"):
		body.ambilitem()
		pickup()
		
func pickup():
	print("item senjata aceh diambil!")
	queue_free()
