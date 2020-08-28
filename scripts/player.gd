extends KinematicBody2D

const SPEED = 200
const JUMP_HEIGHT = -100
const LASER = preload("res://scenes/Laser.tscn")



export var bullet_speed = 1000


var velocity = Vector2()
var is_dead = false





func _ready() -> void:
	velocity.y = JUMP_HEIGHT
	$AnimatedSprite.play("moving")
	
	
	
	
#func _process(delta: float) -> void:
	
	
	
	#if Input.is_action_pressed("fire"):
		#var bullet_instance = bullet.instance()
		#bullet_instance.position = position
		#bullet_instance.rotation_degrees = rotation_degrees
		#bullet_instance.apply_impulse(Vector2(), Vector2(bullet_speed, 0).rotated(rotation))	
		#get_tree().get_root().add_child(bullet_instance)





func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
	elif !Input.is_action_pressed("ui_right"):
		velocity.y = JUMP_HEIGHT 
		velocity.x = 0
	else:
		velocity.x = 0
		
	
	
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	elif !Input.is_action_pressed("ui_left"):
		velocity.y = JUMP_HEIGHT
	else:
		velocity.x = 0
		
		
		
		
		
	#if Input.is_action_pressed("fire"):
		#var bullet_instance = bullet.instance()
		#bullet_instance.position = position
		#bullet_instance.rotation_degrees = rotation_degrees
		#bullet_instance.apply_impulse(Vector2(), Vector2(bullet_speed, 0).rotated(rotation)
		
		
		
	if Input.is_action_just_pressed("fire"):
		var laser = LASER.instance()
		get_parent().add_child(laser)
		laser.position = $Position2D.global_position
		
		
		
		
		
		
	
		
	
	
					

	velocity = move_and_slide(velocity)
	pass
	
	
	#make sure that player is in view
	
	var viewRect :=  get_viewport_rect()
	position.x = clamp(position.x, 0, viewRect.size.x)

	
	
func dead():
	is_dead = true
	velocity = Vector2(0, 0)
	$AnimatedSprite.queue_free()
	$CollisionShape2D.set_deferred("disabled", true)

	
	






