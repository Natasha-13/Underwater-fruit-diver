extends HSlider

@export var audio_bus_name: String = "SFX"

var audio_bus_id: int

func _ready() -> void:
	audio_bus_id = AudioServer.get_bus_index(audio_bus_name)

func _on_value_changed(value: float) -> void:
	print(value)
	var db = linear_to_db(value)
	AudioServer.set_bus_volume_db(audio_bus_id, db)
