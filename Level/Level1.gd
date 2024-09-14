extends Node2D

onready var hero = $Hero
onready var pedang = $Pedang

onready var health_progress = $CanvasLayer/HealthBar/TextureProgress
onready var jumlah_koin = $CanvasLayer/CoinBar/Label
onready var jumlah_item = $CanvasLayer/Chest/Label
func _on_ZonaJatuh_body_entered(body):
	if body.name == 'Hero':
#		get_tree().change_scene("res://Level/Level1.tscn")
		Global.respawn()

func _on_Hero_hero_apdet_health(value):
	health_progress.value = value


func _on_Hero_hero_apdet_koin(value):
	jumlah_koin.text = String(value)


func _on_Pedang_body_entered(body):
	if body.name == 'Hero':
		pedang.queue_free()
		hero.ambilpedang()


func _on_Hero_hero_apdet_item(value):
	jumlah_item.text = String(value)