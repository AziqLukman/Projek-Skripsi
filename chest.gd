extends Area2D

var buka = false;
onready var sprite = $Sprite
var selected_item_path = ""


func _ready():
	randomize()

func _process(delta):
	if not buka:
		sprite.play("idle")
	
func _on_chest_area_entered(area):
	if area.is_in_group("pedang"):
		buka = true;
		sprite.play("open")
		if selected_item_path == "":
			acak_item()

func _on_Sprite_animation_finished():
	if sprite.animation == "open":
#		yield(get_tree().create_timer(1), "timeout")
		$AnimationPlayer.play("menghilang")
		spawn_item()
		
func hapus():
	print("Hapus!")
	queue_free()
	
func spawn_item():
	if selected_item_path !="":
		var item_scene = load(selected_item_path)
		if item_scene:
			var item_instance = item_scene.instance()
			item_instance.position = position 
			get_parent().add_child(item_instance)

func acak_item():
#	var indeks = randi() % item_path.size()
#	selected_item_path = item_path[indeks]
#	item_path.remove(indeks)
	if Bajusenjataglobal.item_path.size() > 0:
		var indeks = randi() % Bajusenjataglobal.item_path.size()
		selected_item_path = Bajusenjataglobal.item_path[indeks]
		Bajusenjataglobal.remove_item(indeks)
	else:
		selected_item_path = ""
		
