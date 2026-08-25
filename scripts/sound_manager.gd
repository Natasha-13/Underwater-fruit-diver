extends Node

func play_sound(stream: AudioStream, volume_db: float = 0.0) -> void:
	var player = AudioStreamPlayer.new()
	player.stream = stream
	player.volume_db = volume_db
	add_child(player)
	player.play()
	await player.finished
	player.queue_free()
