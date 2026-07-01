extends Node2D

const TILE_SIZE = 32
var player_pos = Vector2(2, 2)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	button_press()

func button_press() -> void:
	var direction = Vector2(0, 0)
	if Input.is_action_just_pressed("Up"):
		direction = Vector2(0, -1)
	elif Input.is_action_just_pressed("Down"):
		direction = Vector2(0, 1)
	elif Input.is_action_just_pressed("Left"):
		direction = Vector2(-1, 0)
	elif Input.is_action_just_pressed("Right"):
		direction = Vector2(1, 0)
	
	var new_pos = player_pos + direction
	
	if new_pos in global_script.walls:
		return
	
	player_pos = new_pos
	global_position = player_pos * TILE_SIZE
