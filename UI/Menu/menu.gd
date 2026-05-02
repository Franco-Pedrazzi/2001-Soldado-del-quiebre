extends Control

@onready var animation = $AnimationPlayer

func _ready() -> void:
	animation.play("new_animation")
	get_tree().create_timer(3)
