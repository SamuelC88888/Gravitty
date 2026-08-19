extends Node2D

@onready var animation : AnimatedSprite2D = $Sceneend
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation.play("Newtwonw")
	#Audiomanager.play("res://Audio/ribhavagrawal-victorymale-version-230553.mp3")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels + stuff/start_screens.tscn")
