extends Button

func _on_pressed() -> void:
	Autoload.startGame.emit()
	$PlayButtonSprite.frame = 0

func _on_mouse_entered() -> void:
	$PlayButtonSprite.frame = 1

func _on_mouse_exited() -> void:
	$PlayButtonSprite.frame = 0
