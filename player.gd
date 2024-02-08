extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func switch_animation(motion):
	$Character.play(motion)
	$Eyes.play(motion)
	$Clothes.play(motion)
	$Pants.play(motion)
	$Hair.play(motion)

func _on_button_pressed():
	switch_animation("water")


func _walk():
	switch_animation("walk")
