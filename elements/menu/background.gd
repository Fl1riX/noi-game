extends Node2D

@onready var bg = $ParallaxBackground
var scroll_speed = 65

func _process(delta: float) -> void:
	bg.scroll_base_offset.x += scroll_speed * delta
