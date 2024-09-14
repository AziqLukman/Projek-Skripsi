extends Control

export var file_name = "savean.txt"

func _on_BtnSave_pressed():
	var file = File.new()
	file.open(file_name, File.WRITE)
	
	file.store_line($TextEdit.text)

	file.close();
	
func _on_BtnLoad_pressed():
	var file = File.new()
	file.open(file_name, File.READ)
	var result = file.get_line()
	$TextEdit.text = result
	file.close()
	pass # Replace with function body.
