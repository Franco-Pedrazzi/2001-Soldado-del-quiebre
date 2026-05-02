extends Node2D
@onready var timer: Timer = $Timer
@onready var color_rect: ColorRect = $ColorRect

func _ready() -> void:
	color_rect.size.x=timer.time_left*5
func _physics_process(delta: float) -> void:
	color_rect.size.x=(timer.time_left)*5
