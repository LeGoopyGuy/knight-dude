extends Area2D

@onready var cave_1 = %"Cave 1"
@onready var animation_player = $AnimationPlayer


func _on_body_entered(_body):
	cave_1.add_point()
	
	animation_player.play("Pickup")
