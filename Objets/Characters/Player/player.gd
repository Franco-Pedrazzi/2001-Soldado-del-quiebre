extends Stats
class_name Player

@onready var body_up: RayCast2D = $AnimatedSprite2D/Body_up
@onready var body_down: RayCast2D = $AnimatedSprite2D/Body_Down


@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var gravity:float= ProjectSettings.get_setting("physics/2d/default_gravity")
var direction=1

var direction_y=0

var on_wall=false

func _physics_process(delta: float) -> void:
	direction=-Input.get_axis("Right","Left")
	direction_y=-Input.get_axis("Up","Crouch")
	velocity.y+= gravity*delta

	move_and_slide()


	
