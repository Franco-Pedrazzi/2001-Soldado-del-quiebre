extends Node
class_name State_base

@onready var controlled_node:Node=self.owner

var gravity:float= ProjectSettings.get_setting("physics/2d/default_gravity")

var state_machine:State_Machine

func start():
	pass
	
func end():
	pass

func handle_gravity(delta):
	controlled_node.velocity.y+= gravity*delta
	
