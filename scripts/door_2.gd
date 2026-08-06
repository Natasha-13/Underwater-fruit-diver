extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Diver":
		if Global.score == 20:
			print("Your Won!")
			#If score < 20 then change scene to you lost
			get_tree().change_scene_to_file("res://scenes/you_won!.tscn")
			pass
