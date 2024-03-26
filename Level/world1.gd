extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

<<<<<<< Updated upstream:Level/world1.gd
func throw_phial():
	$Puddle.play("default")
=======
func flask_throw():
	$PuddleTop.play("default")

func move_forward():
	var tween = create_tween()
	tween.tween_property($World, "position", Vector2(-100, 0), 2)
	
>>>>>>> Stashed changes:Scripts/world.gd
