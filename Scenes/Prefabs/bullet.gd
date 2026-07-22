extends RigidBody2D

func shoot(direction: Vector2, speed: float, lifetime:float):
	$AnimatedSprite2D.play("default")
	apply_impulse(direction * speed)
	get_tree().create_timer(lifetime).timeout.connect(queue_free)
