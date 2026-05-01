extends Node
class_name Item_base

@export var durability=1

#Bullet OR mele 
@export var kind="Bullet"

func use():
	durability-=1
	if durability<=0:
		return null
	else:
		return self
