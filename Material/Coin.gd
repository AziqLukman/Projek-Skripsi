extends Area2D


func _on_Area2D_body_entered(body):

	var _efekkoin = preload("res://Material/EfekKoin.tscn")
	var efekkoin = _efekkoin.instance()
	efekkoin.transform = self.transform
	get_tree().current_scene.add_child(efekkoin)
		
	remove_from_group("GrupKoin")
	if body.name == 'Hero':
		body.ambilkoin()
#		Global.add_coins(1)
	queue_free()
