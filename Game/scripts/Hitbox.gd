extends Area2D

@onready var timer = $Timer
@onready var hurt = $Hurt



func _on_body_entered(player):
	player.hp -= 25
	player.animated_sprite.play("hurt")

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree(). reload_current_scene()
