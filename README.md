***Game Documantation***

Name: UpoFnefV2
Game Genre: 2d point & click
Game Engine: Godot 4
Platform: PC
Game Mode: Singleplayer

Autor: Jakob Savas
Start Date: 28.09.2026

***Description***

UpoFnefV2 is a game fnaf like whre you have to survive in an office until 6 am.

***Mechanics***

Player:

    player can sit in the office and lure the robot trough the rooms using sounds

Robot:

    robot wonders trough the corridors going to the sound if played in the room next to him

Power:

    power sometimes shuts down, when it happens player can't use PC and needs to reset it using buttons in front of him

***Project Structure***

```
upofnefv2/
├── project.godot
├── assets/
│   ├── sounds/
│   │   ├── 8bitCameraSFX.mp3
│   │   ├── robotWalkingSFX.mp3
│   │   └── busLayout/
│   │       └── default_bus_layout.tres
│   └── sprites/
│       ├── biuro.png
│       └── soundLure.png
├── scene/
│   ├── game.tscn
│   ├── pc_screen.tscn
│   └── robot.tscn
└── scripts/
    ├── autoload.gd
    ├── game.gd
    └── roomButtons/
        └── room1Button.gd
```



***Uptade Log***

Ver. 0.0.0 - 28.09.2026
- Game was created
- Added button

Ver. 0.1.0 - 29.09.2026
- Added background
- Added 2 more button
- Added PC button

Ver. 0.2.0 - 30.09.2026
- Added sounds
- Added PCScreen scene

Ver. 0.3.0 - 1.10.2026
- Added darkness
- Added autoload scene
- Moved public variables and functions to the autoload scene
- Fixing bugs

Ver. 0.4.0 - 2.10.2026
- Added PC screen
- Added flashing lights when turning the power on
- Added return button to turn off the PC

Ver. 0.5.0 - 4.10.2026
- Added sound lure sprite
- Added detection when a room is clicked on the cameras
- Lure now moves to mouse when clicked on a specific room

Ver. 0.6.0 - 5.10.2026
- Added room buttons fore every room
- Added robot movement mechanic
- Added robot moving SFX
- Added luring mechanic
- Fixing bugs

Ver. 0.6.1 - 6.10.2026
- Added jumpscare

Ver. 0.6.2 - 7.10.2026
- Added game over screen

Ver. 0.7.0 - 8.10.2026
- Added menu screen
- Added play button
- Fixing bugs

Ver. 1.0.0 - 9.10.2026
- Added clock
- Added winning screen
- Finished game


