extends Node

var power = true
var shuttingThePower = false
var isPCActive = false
var robotPos = 1
var gameOn = false
var isRobotMad = false
var difficulty = 2 #ranges from 0 to 2
var roomConections = {
	1: [3],
	2: [3],
	3: [1, 2, 4, 5, 5],
	4: [3],
	5: [3, 6, 6],
	6: []
}

signal doJumpscare()
signal gameOverSignal()
signal startGame()

@onready var power_switch_sfx: AudioStreamPlayer2D = $powerSwitchSFX
@onready var power_outage_sfx: AudioStreamPlayer2D = $powerOutageSFX
@onready var pc_sfx: AudioStreamPlayer2D = $PCSFX
@onready var robot_walking_sfx: AudioStreamPlayer2D = $robotWalkingSFX
@onready var robot_jumpscare_sfx: AudioStreamPlayer2D = $robotJumpscareSFX



func _ready():
	doJumpscare.connect(jumpscare)
	gameOverSignal.connect(gameOver)
	
func shutThePower(): # a tak żeby co jakiś czas korki wydupcyły
	Autoload.shuttingThePower = true
	var time = randi_range(5.0 - difficulty, 10.0 - difficulty)
	await get_tree().create_timer(time).timeout
	if power and gameOn:
		power_outage_sfx.play()
		Autoload.power = false
	Autoload.shuttingThePower = false

func robotMovementLoop():
	while gameOn and robotPos != 6:
		if !isRobotMad:
			await get_tree().create_timer(randi_range(3, 8 - difficulty)).timeout
		else:
			await get_tree().create_timer(1).timeout
		robotMove()

func robotMove():
	robotPos = roomConections[robotPos].pick_random()
	if robotPos != 6:
		robot_walking_sfx.play()
	else:
		doJumpscare.emit()
	print("Robot moved to:", Autoload.robotPos)

func jumpscare():
	$"/root/Game/Robot".visible = true
	robot_jumpscare_sfx.play()
	await robot_jumpscare_sfx.finished
	gameOverSignal.emit()
	$"/root/Game/Robot".visible = false
	
	
func restart():
	power = true
	shuttingThePower = false
	isPCActive = false
	robotPos = 1
	gameOn = false
	isRobotMad = false
	
func gameOver():
	gameOn = false
	isPCActive = false
	$"/root/Game/gameOverScreen".visible = true
	
