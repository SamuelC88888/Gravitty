extends Node2D
@onready var animation : AnimatedSprite2D = $Name
@onready var animationa1 : AnimatedSprite2D = $apple1
@onready var animationa2 : AnimatedSprite2D = $apple2
@onready var animationa3 : AnimatedSprite2D = $apple3
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation.play("fall")
	Audiomanager.play("res://Audio/nastelbom-background-music-486996.mp3")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels + stuff/level_1.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels + stuff/level_2.tscn")


func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels + stuff/level_3.tscn")


func _on_button_mouse_entered() -> void:
	animationa1.play("shake")

func _on_button_mouse_exited() -> void:
	animationa1.play("idle")


func _on_button_2_mouse_entered() -> void:
	animationa2.play("shake")


func _on_button_2_mouse_exited() -> void:
	animationa2.play("idle")


func _on_button_3_mouse_entered() -> void:
	animationa3.play("shake")
 

func _on_button_3_mouse_exited() -> void:
	animationa3.play("idle")
