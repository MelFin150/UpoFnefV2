extends Sprite2D

var basePosition: Vector2
@export var strenght = 2

func _ready():
	basePosition = position
	visible = false

func _process(delta: float) -> void:
	position = basePosition + Vector2(
		randf_range(-strenght, strenght),
		randf_range(-strenght, strenght)
	)
	
