extends Button

func _process(delta: float) -> void:
	if Autoload.background == 0:
		position = Vector2(117, -103.5)
	elif Autoload.background == 1:
		position = Vector2(-146, -103.5)

func _on_pressed() -> void:
	Autoload.background = (Autoload.background + 1) % 2
	print(Autoload.background)
