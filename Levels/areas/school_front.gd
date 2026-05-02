extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body is Npc:
		await get_tree().create_timer(randf()*1).timeout
		body.captured=true
		body.state_machine.change_to("Idle")
	if body is Npc:
		await get_tree().create_timer(5).timeout
		pass
