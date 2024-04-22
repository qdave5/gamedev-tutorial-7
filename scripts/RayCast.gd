extends RayCast

var current_collider

func _ready():
	pass

func _process(delta):
	var collider = get_collider()

	if is_colliding() and collider is Interactable:
		print(collider)
		if Input.is_action_just_pressed("interact"):
			print("interact")
			collider.interact()
