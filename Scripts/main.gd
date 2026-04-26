extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$AnimatedSprite2D.scale.x = 6* (get_viewport().size.x / 1152)
	$AnimatedSprite2D.position.x = get_viewport().size.x / 4.5
	$AnimatedSprite2D.scale.y = 6*(get_viewport().size.y / 648)
	$AnimatedSprite2D.position.y = get_viewport().size.y / 1.9
	
