extends Control


var notPaused = true

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		if notPaused:
			get_tree().paused = true
			notPaused = false
			visible = true
		else:
			get_tree().paused = false
			notPaused = true
			visible = false
			
			
	


func _on_Returt_To_Menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene("res://scenes/MainScene.tscn")



	
	
