extends Area2D

onready var popup_scene = preload("res://Baju/Info/UleBalangInfo.tscn")

func _on_BajuAceh_body_entered(body):
	if body.name == 'Hero':
		body.ambilitem()
		pickup() #tambah body dikurung
#
func pickup(): #tambah body dikurung 
	print("item baju aceh diambil!")
#	show_popup() #tambah body dikurung
	queue_free()

#func show_popup(body):
#	var popup_instance = popup_scene.instance()
#	get_tree().root.add_child(popup_instance)
#
#	# Mengatur posisi popup ke posisi hero
#	var hero_position = body.global_position
#	popup_instance.rect_position = hero_position - popup_instance.rect_size / 2
#
#	# Menghubungkan sinyal input_event untuk mendeteksi klik
#	popup_instance.connect("input_event", self, "_on_Popup_input_event")
#
#func _on_Popup_input_event(viewport, event, shape_idx):
#	if event is InputEventMouseButton and event.pressed:
#		# Menghapus popup saat diklik
#		get_tree().root.remove_child(event.get_source())
#		event.get_source().queue_free()
