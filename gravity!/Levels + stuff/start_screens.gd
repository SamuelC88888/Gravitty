extends Node2D
@onready var animation : AnimatedSprite2D = $Name

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation.play("fall")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels + stuff/level_1.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels + stuff/level_2.tscn")


func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels + stuff/level_3.tscn")
