extends State_base

func on_physics_process(delta: float) -> void:
	controlled_node.velocity.x=0
	controlled_node.animated_sprite_2d.play("Crouched")

	
func on_input(event: InputEvent) -> void:
	if Input.is_action_pressed("Crouch"):
		if not (Input.is_action_pressed("Left") or Input.is_action_pressed("Right")) and Input.is_action_pressed("Crouch"):
			state_machine.change_to("Crouched")
		elif (Input.is_action_pressed("Left") or Input.is_action_pressed("Right")) and Input.is_action_pressed("Crouch"):
			state_machine.change_to("Roll")
			
	if not Input.is_action_pressed("Crouch"):
		state_machine.change_to("Idle")
	
	if Input.is_action_pressed("Jump"):
		state_machine.change_to("Jump")
