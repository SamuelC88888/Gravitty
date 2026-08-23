extends Node2D
@onready var animation : AnimatedSprite2D = $Sceneend2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation.play("newtonl")

	Audiomanager.play("res://Audio/universfield-sad-trumpet-278822.mp3")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels + stuff/start_screens.tscn")
