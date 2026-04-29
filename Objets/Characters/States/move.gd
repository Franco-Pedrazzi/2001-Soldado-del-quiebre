extends State_base

func on_physics_process(delta: float) -> void:
	controlled_node.velocity.x=Input.get_axis("Left","Right")*controlled_node.stats.speed
