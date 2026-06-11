extends CharacterBody2D
class_name apple

const SPEED = 650
const JUMP_VELOCITY = -400.0
var current_hp = 3500
var speed_int 

var max_speed = 0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func _process(delta: float) -> void:
	speed_int = int(velocity.y)
	print(str(speed_int))



func _on_area_2d_area_entered(area: Area2D) -> void:
	if area is Branch:
		current_hp -= speed_int 
		print("ouch! Hp =:",current_hp)
		print("damage ",speed_int)
		if current_hp <= 0:
			get_tree().change_scene_to_file("res://Levels/loser.tscn")
		area.get_parent().queue_free()
	if area is safe_branch:
		speed_int = 250
		area.get_parent().queue_free()
	if area is ending:
		if speed_int >= 4000:
			get_tree().change_scene_to_file("res://Levels/loser.tscn")
		else:
			get_tree().change_scene_to_file("res://Levels/completion.tscn")


func _on_ending_1_body_entered(body: Node2D) -> void:
	if body is apple:
		get_tree().change_scene_to_file("res://Levels/completion.tscn")
