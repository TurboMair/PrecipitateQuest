extends Node2D

var index = 0
var curr_scene = ""
var puddles = []
# Called when the node enters the scene tree for the first time.
func _ready():
	curr_scene = get_tree().current_scene.name
	match curr_scene:
		"Tutorial":
			puddles.append($PuddleTop)
		"Easy":
			puddles.append($PuddleTop)
			puddles.append($PuddleTop2)
			puddles.append($PuddleTop3)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func flask_throw():
	puddles[index].stop()
	puddles[index].play("default")
