extends Stats
class_name Npc
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

@onready var state_machine: State_Machine = $State_Machine
var gravity:float= ProjectSettings.get_setting("physics/2d/default_gravity")


var direction=1

var captured=false

func _physics_process(delta: float) -> void:
	if is_on_floor() and not captured:
		state_machine.change_to("Move")
	velocity.y+= gravity*delta
	move_and_slide()

func dead() -> void:
	print("auch")


func _on_hit_box_area_entered(area: Area2D) -> void:
	print("auch_mele")
