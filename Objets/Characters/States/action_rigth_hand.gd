extends State_base

func start():
	if controlled_node.Right_hand:
		if controlled_node.Right_hand.kind=="Bullet":
			controlled_node.Right_hand=controlled_node.Right_hand.use()
			var target=controlled_node.bullet.get_collider()
			if target:
				if target.has_method("dead"):
					target.dead()
	
	state_machine.change_to("Idle")
