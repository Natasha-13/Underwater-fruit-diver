extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Diver":
		if Global.score >= 10:
			print("You Won!")
			# load a new level
			get_tree().change_scene_to_file("res://scenes/level_2.tscn")
			pass
		if Global.score <= 9:
			print("you lost")
			get_tree().change_scene_to_file("res://scenes/you_lost!.tscn")
			
	
