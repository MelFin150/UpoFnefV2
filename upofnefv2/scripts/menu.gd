extends Node2D

func _ready() -> void:
	visible = true
	$MenuSprite.frame = 0
	doSomeWeirdStuffWithMenu()

func doSomeWeirdStuffWithMenu():
	await get_tree().create_timer(randf_range(5, 7)).timeout
	$MenuSprite.frame = 1
	await get_tree().create_timer(randf_range(0.05, 0.2)).timeout
	$MenuSprite.frame = 0
	doSomeWeirdStuffWithMenu()

func _process(delta: float) -> void:
	pass
