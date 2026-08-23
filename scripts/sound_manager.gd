extends Node

func play_sound(stream: AudioStream) -> void:
	var player = AudioStreamPlayer.new()
	player.stream = stream
	add_child(player)
	player.play()
	await player.finished
	player.queue_free()
