extends CharacterBody2D
class_name apple

const SPEED = 650
const JUMP_VELOCITY = -400.0
var maxhp = 1000
var current_hp = 1000
var vdamage = velocity.y
var speed_int 


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
	speed_int = int(velocity.y * 0.2)



func _on_area_2d_area_entered(area: Area2D) -> void:
	if area is Branch:
		current_hp -= speed_int 
		current_hp = clamp(current_hp,0,maxhp)
		print("ouch! Hp =:",current_hp)
		print("int",speed_int)
		if current_hp <= 0:
			get_tree().change_scene_to_file("res://Levels/start_screens.tscn")
