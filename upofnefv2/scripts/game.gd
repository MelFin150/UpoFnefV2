extends Node2D

func _ready(): # to co się dzieje na początku
	$"/root/Game/gameOverScreen".visible = false
	$"/root/Autoload".startGame.connect(gameStart)
	Autoload.robot_walking_sfx.bus = "Echo"
	Autoload.win_sfx.bus = "Echo"
	$YouWonScreen.visible = false
	
func showWinnigScreen():
	$YouWonScreen.self_modulate.a = 0.0
	$YouWonScreen.visible = true
	var tween = create_tween()
	tween.tween_property($YouWonScreen, "self_modulate:a", 1.0, 1.5)
	
func gameStart():
	Autoload.time = 0
	Autoload.clockOn = true
	$"/root/Game/Menu".visible = false
	$"/root/Game/gameOverScreen".visible = false
	Autoload.gameOn = true
	Autoload.shutThePower()
	Autoload.robotMovementLoop()
	Autoload.timePass()

func _process(delta):
	if Autoload.time == 7 and Autoload.gameOn == true:
		Autoload.gameOn = false
		showWinnigScreen()
		Autoload.win_sfx.play()
		await Autoload.win_sfx.finished
		await get_tree().create_timer(2).timeout
	
