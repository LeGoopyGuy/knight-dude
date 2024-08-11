extends CollisionShape2D


@onready var cave_1 = %"Cave 1"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if cave_1.score >= 12:
		set_deferred("disabled", true)
