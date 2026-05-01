extends State_base
var direction_y
var init_direction_x
var direction_x
var can_roll=true

func start():
	init_direction_x=-sign(controlled_node.animated_sprite_2d.scale.x)

func on_physics_process(delta: float) -> void:
	direction_y=controlled_node.direction_y
	direction_x=controlled_node.direction
	controlled_node.animated_sprite_2d.play("Clim")
	
	controlled_node.velocity.y=direction_y*controlled_node.clim_velocity

	if controlled_node.velocity==Vector2(0,0):
		controlled_node.animated_sprite_2d.pause()
		
		if controlled_node.is_on_floor():
			state_machine.change_to("Idle")
		
func on_input(event: InputEvent) -> void:
	if Input.is_action_pressed("Jump"):
		state_machine.change_to("Jump")
		
	if direction_x!=init_direction_x and direction_x!=0:
		controlled_node.velocity.y=controlled_node.Jump_stength
		controlled_node.velocity.x=controlled_node.speed*direction_x
		state_machine.change_to("Fall")

		

		
