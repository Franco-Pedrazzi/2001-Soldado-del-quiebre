extends Stats
class_name Dummy
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

@onready var state_machine: State_Machine = $State_Machine
var direction=1

func dead() -> void:
	print("auch")


func _on_hit_box_area_entered(area: Area2D) -> void:
	print("auch_mele")
