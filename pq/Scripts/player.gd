extends Node2D

func _ready():
	pass # Replace with function body.
func _process(delta):
	pass

func flask_throw():
	switch_animation("water")
	await get_tree().create_timer(1).timeout
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

func _stop():
	$Walk.stop()
	$Character.stop()
	$Eyes.stop()
	$Clothes.stop()
	$Pants.stop()
	$Hair.stop()
