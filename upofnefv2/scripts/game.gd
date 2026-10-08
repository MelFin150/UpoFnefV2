extends Node2D

func _ready(): # to co się dzieje na początku
	$"/root/Game/gameOverScreen".visible = false
	$"/root/Autoload".startGame.connect(gameStart)
	Autoload.robot_walking_sfx.bus = "Echo"
	
func gameStart():
	$"/root/Game/Menu".visible = false
	$"/root/Game/gameOverScreen".visible = false
	Autoload.gameOn = true
	Autoload.shutThePower()
	Autoload.robotMovementLoop()	

func _process(delta):
	pass
	
