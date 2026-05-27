extends StaticBody2D
var health = 3
var death = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is apple:
		if death == 3:
			get_tree().change_scene_to_file("res://Levels/start_screens.tscn")
		else:
				death += 1
				
		await get_tree().create_timer(0.01).timeout
		queue_free()
		pass
