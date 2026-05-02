extends Area2D

@onready var sprite = $AnimatedSprite2D

func _ready() -> void:
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	sprite.play("normal")

func _on_mouse_entered() -> void:
	sprite.play("hover")

func _on_mouse_exited() -> void:
	sprite.play("normal")
