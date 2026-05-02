extends Button

@export var iniciar: String = "res://Levels/Nivel_1_Escuela.tscn"

func _ready():
	pressed.connect(func(): get_tree().change_scene_to_file(iniciar))
