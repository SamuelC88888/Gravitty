extends CharacterBody2D
class_name apple

const SPEED = 650
const JUMP_VELOCITY = -400.0
var maxhp = 1000
var current_hp = 1000
var vdamage = velocity.y



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

	
	


func _on_area_2d_area_entered(area: Area2D) -> void:
		current_hp += -100
		current_hp = clamp(current_hp,0,maxhp)
		print("ouch! Hp =:",current_hp)
	
