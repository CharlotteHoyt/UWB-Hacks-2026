extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.scale.x = 6* (get_viewport().size.x / 1152)
	$AnimatedSprite2D.position.x = get_viewport().size.x / 4.5
	$AnimatedSprite2D.scale.y = 6*(get_viewport().size.y / 648)
	$AnimatedSprite2D.position.y = get_viewport().size.y / 1.9
	
	$AnimatedSprite2D.play("smoke")
	await get_tree().create_timer(6.0).timeout
	#$AnimatedSprite2D.play("still")
	
	var time_delta = 1.0
	var distance_delta = 80
	for i in range(9):
		distance_delta += 50
		$AnimatedSprite2D.position.y -= 100
		time_delta -= 0.1
		await get_tree().create_timer(time_delta).timeout
		
	%RestartButton.visible = true;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn") # Replace with function body.
