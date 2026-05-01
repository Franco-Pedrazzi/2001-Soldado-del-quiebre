extends State_base

func start():
	if controlled_node.Left_hand:
		if controlled_node.Left_hand.kind=="Bullet":
			controlled_node.Left_hand=controlled_node.Left_hand.use()
			var target=controlled_node.bullet.get_collider()
			if target:
				if target.has_method("dead"):
					target.dead()
	
	state_machine.change_to("Idle")
