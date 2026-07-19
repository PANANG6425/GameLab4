extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("move")
	$Node2D/FireSparkles.emitting = true
	pass # Replace with function body.


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		GameManager.death()
