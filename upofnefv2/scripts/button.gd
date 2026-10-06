extends Button # dalej za chiny ludowe nie wiem po co to tutaj jest

func turningPowerOn(time):
	for i in range(2):
		Autoload.power = true
		await get_tree().create_timer(time - (i/10)*2).timeout
		Autoload.power = false
		await get_tree().create_timer(time).timeout
	Autoload.power = true

func _on_pressed() -> void: # jak klikniesz to się stanie
	turningPowerOn(0.1)
	if not Autoload.shuttingThePower:
		Autoload.shutThePower()	
	Autoload.power_switch_sfx.play()

func _process(delta): # to leci cały czas
	if Autoload.power:
		$AnimatedSprite2D.frame = 0
	else:
		$AnimatedSprite2D.frame = 1
	
	if Autoload.isPCActive:
		disabled = true
		visible = false
	else:
		disabled = false
		visible = true
		
	if !Autoload.gameOn:
		disabled = true
		visible = false
	else:
		disabled = false
		visible = true
