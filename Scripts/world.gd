extends Node2D

var curr_scene = ""
var puddles = []
var scrolling = false
# Called when the node enters the scene tree for the first time.
func _ready():
	curr_scene = get_tree().current_scene.name
	puddles.append($PuddleTop)
	if(curr_scene == "Easy" or curr_scene == "Medium"):
		puddles.append($PuddleTop2)
		puddles.append($PuddleTop3)
		if(curr_scene == "Medium"):
			puddles.append($PuddleTop4)
			puddles.append($PuddleTop5)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(scrolling == true):
		$Background.scroll_offset.x -= 60*delta

func flask_throw():
	var index = get_parent().question_number
	puddles[index].stop()
	puddles[index].play("default")

func move_forward():
	scrolling = true
	var tween : Tween = create_tween()
	var new_pos = Vector2(self.position[0] + -1152, 0)
	tween.tween_property(self, "position", new_pos, 2)
	await tween.finished
	scrolling = false
