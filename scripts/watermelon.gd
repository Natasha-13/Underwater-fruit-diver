extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body.name == "Diver":
		print("Yum!")
		Global.score += 1
		visible = false
		$CollisionShape2D.disabled = true
