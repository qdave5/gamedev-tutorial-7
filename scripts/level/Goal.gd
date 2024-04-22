extends Area

export (String) var sceneName = "Level 1"

func _on_Area_body_entered(body):
	print(body.get_name())
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/level/" + sceneName + ".tscn"))
