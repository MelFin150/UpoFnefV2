extends Button

func _on_pressed() -> void:
	Autoload.isPCActive = true
	Autoload.pc_sfx.play()

func _process(delta: float) -> void:
	if !Autoload.gameOn or Autoload.isPCActive or Autoload.background == 1:
		disabled = true
	else:
		disabled = false
