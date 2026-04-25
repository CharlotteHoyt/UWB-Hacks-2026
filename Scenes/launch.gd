extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play("smoke")
	await get_tree().create_timer(6.0).timeout
	#$AnimatedSprite2D.play("still")
	
	var time_delta = 1.0
	var distance_delta = 80
	for i in range(8):
		distance_delta += 50
		$AnimatedSprite2D.position.y -= 80
		time_delta -= 0.1
		await get_tree().create_timer(time_delta).timeout
		
	%RestartButton.visible = true;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn") # Replace with function body.
