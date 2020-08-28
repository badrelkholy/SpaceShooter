extends Camera2D

onready var topLeft = $"Limits/Top Left"
onready var bottomRight =$"Limits/Bottom Right"

func _ready() -> void:	
	set_process(true)
	
	
	
func _process(delta: float) -> void:
	var pos = get_position()
	set_position(Vector2(pos.x, pos.y + 0.05))
