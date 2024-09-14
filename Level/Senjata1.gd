extends Control

var achievement_unlocked = false
var koin = 1000

func _ready():
	pass

#func update_coin_display():
#	$Panel/Label.text = str(koin)

func get_coins():
	return koin
	
func _on_beli_pressed():
#	var a = 50
#	var b = 50
#	print(a+b)
	if koin >= 50:
		koin -= 50
		achievement_unlocked = true
#		update_achievement_status()
#		save_game()
		print(koin)
#	if spend_coins(50):  
#		achievement_unlocked = true
#		update_achievement_status()
#		save_game()
	else:
		print("Not enough coins!")
##	update_coin_display()
	
#func update_achievement_status():
#	if achievement_unlocked:
#		$AchievementStatus.text = "Achievement: Unlocked"
#		$beli.disabled = true
#	else:
#		$AchievementStatus.text = "Achievement: Locked"
#		$beli.disabled = false


func spend_coins(amount):
	if koin >= amount:
		koin -= amount
		return true
	return false
	print("koin= ", koin)
	
func save_game():
	var save_data = {
		"coins": get_coins(),
		"achievement_unlocked": achievement_unlocked
	}
	var file = File.new()
	file.open("user://save_game.save", File.WRITE)
	file.store_string(to_json(save_data))
	file.close()

func load_game():
	var file = File.new()
	if file.file_exists("user://save_game.save"):
		file.open("user://save_game.save", File.READ)
		var save_data = parse_json(file.get_as_text())
		Global.coins = save_data["coins"]
		achievement_unlocked = save_data["achievement_unlocked"]
		file.close()
#	update_coin_display()
#	update_achievement_status()

func _on_Button_pressed():
	get_tree().change_scene("res://Level/Senjata2.tscn")
