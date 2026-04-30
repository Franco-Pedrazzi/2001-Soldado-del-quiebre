extends Stats
class_name Player

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var gravity:float= ProjectSettings.get_setting("physics/2d/default_gravity")
var direction=1

func _physics_process(delta: float) -> void:
	direction=-Input.get_axis("Right","Left")
	velocity.y+= gravity*delta
	move_and_slide()


	
