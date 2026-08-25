extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Diver":
		if Global.score >= 20:
			print("Your Won!")
			get_tree().change_scene_to_file("res://scenes/you_won!.tscn")
		if Global.score <= 19:
			print("try again")
			get_tree().change_scene_to_file("res://scenes/you_lost!.tscn")
