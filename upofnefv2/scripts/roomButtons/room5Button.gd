extends Button

signal roomClicked(whichRoom)

func _on_pressed() -> void:
	roomClicked.emit(5)
