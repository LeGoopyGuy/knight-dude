extends Area2D

@onready var timer = $Timer
@onready var hurt = $Hurt




func _on_body_entered(player):
	player.hp = 0
	


