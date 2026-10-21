extends Button

func _process(delta: float) -> void:
	if Autoload.background == 0:
		position = Vector2(102, -62.5)
		$LookAroundButtonSprite.frame = 0
	elif Autoload.background == 1:
		position = Vector2(-142, -62.5)
		$LookAroundButtonSprite.frame = 1
	
	if !Autoload.gameOn or Autoload.isPCActive:
		disabled = true
	else:
		disabled = false

func _on_pressed() -> void:
	Autoload.background = (Autoload.background + 1) % 2
	#print(Autoload.background)
