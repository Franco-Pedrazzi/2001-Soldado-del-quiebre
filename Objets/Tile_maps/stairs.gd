extends StaticBody2D

var is_player_on=false

var player

func _physics_process(delta: float) -> void:
	if is_player_on and Input.is_action_just_pressed("Crouch"):
		player.set_collision_mask_value(9,false)

func _on_area_2d_body_entered(body: Node2D) -> void:
	is_player_on=true
	player=body


func _on_area_2d_body_exited(body: Node2D) -> void:
	is_player_on=false
	player.set_collision_mask_value(9,true)
