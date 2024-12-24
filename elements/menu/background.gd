extends Node2D

@onready var bg = $ParallaxBackground
@onready var sprite = $ParallaxBackground/ParallaxLayer/Sprite2D

var bgs = ['res://assets/backgrounds/space1.png', 'res://assets/backgrounds/space2.png', 'res://assets/backgrounds/space3.png', 'res://assets/backgrounds/space4.png', 'res://assets/backgrounds/space5.png', 'res://assets/backgrounds/space6.png', 'res://assets/backgrounds/space7.png', 'res://assets/backgrounds/space8.png', 'res://assets/backgrounds/space9.png', 'res://assets/backgrounds/space10.png']
var scroll_speed = -65

func _ready() -> void:
	sprite.texture = load(bgs[randi() % bgs.size()])

func _process(delta: float) -> void:
	#sprite.texture = load(bgs[randi() % bgs.size()])
	bg.scroll_base_offset.x += scroll_speed * delta
