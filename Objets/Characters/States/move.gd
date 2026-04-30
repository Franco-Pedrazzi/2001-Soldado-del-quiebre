extends State_base
var direction
var can_roll=true
func on_physics_process(delta: float) -> void:
	direction=controlled_node.direction
	if direction!=0: 
		controlled_node.animated_sprite_2d.scale.x=abs(controlled_node.animated_sprite_2d.scale.x)*-direction
	
	controlled_node.animated_sprite_2d.play("Run")
	
	controlled_node.velocity.x=direction*controlled_node.speed

	if controlled_node.velocity==Vector2(0,0):
		state_machine.change_to("Idle")
		
func on_input(event: InputEvent) -> void:
	if Input.is_action_pressed("Jump"):
		state_machine.change_to("Jump")
		
	if Input.is_action_pressed("Crouch"):
		if can_roll:
			delay_roll()
			state_machine.change_to("Roll")
		
func delay_roll():
	can_roll=false
	print(8)
	await get_tree().create_timer(0.4).timeout
	
	can_roll=true
		
