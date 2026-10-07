extends Button

func _on_mouse_entered() -> void:
	$restartButtonSprite.frame = 1
	
func _on_mouse_exited() -> void:
	$restartButtonSprite.frame = 0

func _on_pressed() -> void:
	Autoload.restart()
	get_tree().reload_current_scene()
