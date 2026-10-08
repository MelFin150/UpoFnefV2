extends Button

func _on_pressed() -> void:
	Autoload.isPCActive = true
	Autoload.pc_sfx.play()

func _process(delta: float) -> void:
	if Autoload.gameOn:
		if Autoload.isPCActive:
			disabled = true
		else:
			disabled = false
	else:
		disabled = true
