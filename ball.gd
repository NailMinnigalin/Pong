extends CharacterBody2D

var SPEED = 150

func _ready() -> void:
	velocity.x = SPEED
	velocity.y = SPEED
	
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	
	if collision:
		var angle = int(collision.get_angle())
		var travel = collision.get_travel()
		
		
		if angle == 0 or angle == int(PI):
			if travel.y > 0:
				velocity.y = -SPEED
			elif travel.y < 0:
				velocity.y = SPEED
		else:
			if travel.x > 0:
				velocity.x = -SPEED
			elif travel.x < 0:
				velocity.x = SPEED
