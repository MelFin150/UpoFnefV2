extends Node2D

var soundLureOn = false

func _ready():
	visible = false
	$"/root/Game/PCScreen/Rooms/room1Button".roomClicked.connect(goToMouse)
	$"/root/Game/PCScreen/Rooms/room2Button".roomClicked.connect(goToMouse)
	$"/root/Game/PCScreen/Rooms/room3Button".roomClicked.connect(goToMouse)
	$"/root/Game/PCScreen/Rooms/room4Button".roomClicked.connect(goToMouse)
	$"/root/Game/PCScreen/Rooms/room5Button".roomClicked.connect(goToMouse)

func goToMouse(room):
	if !soundLureOn:
		soundLureOn = true
		#print(room)
		global_position = get_global_mouse_position()
		visible = true
		soundLuring(room)
		await get_tree().create_timer(4).timeout
		visible = false
		soundLureOn = false

func soundLuring(roomLured):
	if roomLured in Autoload.roomConections[Autoload.robotPos]:
		Autoload.robotPos = roomLured
		print("Robot moved to:", Autoload.robotPos)
		Autoload.robot_walking_sfx.play()
	elif roomLured == Autoload.robotPos:
		Autoload.isRobotMad = true
		print("Robot is mad.")
	else:
		print("Room with lure is not connected to the robot position.")
