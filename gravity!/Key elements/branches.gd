extends StaticBody2D
const maxhealth = 3
var health = maxhealth


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is apple:
		damage()
		death()

func damage():
	health -= 1


func death():
	if health <= 0:
		get_tree().change_scene_to_file("res://Levels/start_screens.tscn")
