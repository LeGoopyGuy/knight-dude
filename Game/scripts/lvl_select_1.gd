extends Node2D

@onready var button: Button = $Button


func _ready() -> void:
	button.pressed.connect(change_scene)

func change_scene():
	get_tree().change_scene_to_file("res://scenes/game.tscn")
