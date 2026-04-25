extends Control

@export var dt: DialogicTimeline

func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _input(event: InputEvent):
	if Dialogic.current_timeline != null:
		return
	if event is InputEventKey and event.keycode == KEY_ENTER and event.pressed:
		Dialogic.start(dt)
		get_viewport().set_input_as_handled()

func _on_button_pressed() -> void:
	if Dialogic.current_timeline != null:
		return
	Dialogic.start(dt)
	get_viewport().set_input_as_handled()
	%MainMenu.visible = false;

func _on_dialogic_signal(argument:String):
	if argument == "Finished":
		%RestartButton.visible = true;


func _on_restart_button_pressed() -> void:
	get_tree().reload_current_scene()
