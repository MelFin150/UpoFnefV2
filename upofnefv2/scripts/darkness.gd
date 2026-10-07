extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !Autoload.gameOn:
		visible = false
	else:
		if Autoload.power:
			visible = false
		else:
			visible = true
