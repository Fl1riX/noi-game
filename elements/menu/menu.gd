extends Node2D

@onready var main_character = $Main_character
var speed = 200
var is_moving = false

func _physics_process(delta: float) -> void:
	if is_moving:
		main_character.position.x += speed * delta

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://elements/Settings/settings.tscn")


func _on_play_pressed() -> void:
	is_moving = true
	await get_tree().create_timer(1.8).timeout
	get_tree().change_scene_to_file('res://Game/game.tscn')
