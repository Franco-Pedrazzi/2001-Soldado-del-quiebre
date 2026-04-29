extends State_base

func on_physics_process(delta: float) -> void:
	controlled_node.velocity.x=0
	
	handle_gravity(delta)
	
	controlled_node.move_and_slide()
	
func on_input(event: InputEvent) -> void:
	if (Input.is_action_pressed("Left") or Input.is_action_pressed("Right")) and not Input.is_action_pressed("Run") and not Input.is_action_pressed("Crouch"):
		state_machine.change_to("Move")
	elif  (Input.is_action_pressed("Left") or Input.is_action_pressed("Right")) and Input.is_action_pressed("Run") and not Input.is_action_pressed("Crouch"):
		state_machine.change_to("Run")
	elif (Input.is_action_pressed("Left") or Input.is_action_pressed("Right")) and not Input.is_action_pressed("Run") and Input.is_action_pressed("Crouch"):
		state_machine.change_to("Stealh")
	elif not (Input.is_action_pressed("Left") or Input.is_action_pressed("Right")) and not Input.is_action_pressed("Run") and Input.is_action_pressed("Crouch"):
		state_machine.change_to("Crouched")
	elif (Input.is_action_pressed("Left") or Input.is_action_pressed("Right")) and Input.is_action_pressed("Run") and Input.is_action_pressed("Crouch"):
		state_machine.change_to("Roll")
	
	if Input.is_action_pressed("Jump"):
		state_machine.change_to("roll")
		
	if Input.is_action_pressed("Left_hand"):
		state_machine.change_to("Action_Left_Hand")
	elif Input.is_action_pressed("Right_hand"):
		state_machine.change_to("Action_Rigth_Hand")
