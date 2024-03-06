extends Node2D

func _ready():
	pass # Replace with function body.
func _process(delta):
	pass

func flask_throw():
	switch_animation("water")
	$Splash.play()

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
	$Walk.play()
