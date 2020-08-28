extends KinematicBody2D

var velocity = Vector2()
var is_dead = false



func _ready() -> void:
	$AnimatedSprite.play("moving")


func dead():
	is_dead = true
	velocity = Vector2(0, 0)
	$AnimatedSprite.play("dead")
	$CollisionShape2D.set_deferred("disabled", true)






func _on_LaserDetector_body_entered(body: PhysicsBody2D) -> void:
	queue_free()
	
	
	

	






