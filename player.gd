extends CharacterBody2D

var SPEED = 300

@export var up_action_name = "first_player_move_up"
@export var down_action_name = "first_player_move_down"

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed(up_action_name):
		velocity.y = -SPEED
	elif Input.is_action_pressed(down_action_name):
		velocity.y = SPEED
	else:
		velocity.y = 0
	
	move_and_slide()
