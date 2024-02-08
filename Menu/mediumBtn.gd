extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Change the scene to a medium level
func _on_pressed():
	get_tree().change_scene_to_file("res://world.tscn") # change the scene name
	
	pass
