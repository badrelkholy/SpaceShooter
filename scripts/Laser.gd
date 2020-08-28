extends Area2D

const SPEED = -1000
var velocity = Vector2()

func _ready() -> void:
	pass
	
func _physics_process(delta: float) -> void:
		velocity.y = SPEED * delta
		translate(velocity)
		$AnimatedSprite.play("laser")
		


func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free()


func _on_Laser_body_entered(body):
	if "Enemy" in body.name:
		body.dead()
	queue_free()
	
