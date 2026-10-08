extends Node2D

func _process(delta: float) -> void:
	if Autoload.isPCActive:
		visible = true
	else:
		visible = false
	
	if !Autoload.power || !Autoload.gameOn:
		Autoload.isPCActive = false
