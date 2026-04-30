extends State_base
var direction

func on_physics_process(delta: float) -> void:
	direction=controlled_node.direction
	if direction!=0: 
		controlled_node.animated_sprite_2d.scale.x=abs(controlled_node.animated_sprite_2d.scale.x)*-direction
	
	controlled_node.animated_sprite_2d.play("Jump")
	
	controlled_node.velocity.x=direction*controlled_node.speed
	
	if controlled_node.velocity.y==0 and controlled_node.velocity.x==0:
		state_machine.change_to("Idle")
	elif controlled_node.velocity.y==0:
		state_machine.change_to("Move")
