extends Node2D

func _ready(): # to co się dzieje na początku
	$"/root/Game/gameOverScreen".visible = false
	Autoload.robot_walking_sfx.bus = "Echo"
	Autoload.gameOn = true
	Autoload.shutThePower()
	Autoload.robotMovementLoop()

func _process(delta):
	pass
	
