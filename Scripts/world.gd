extends Node2D

var curr_scene = ""
var puddle_tops = []
var puddles = []
var scrolling = false
# Called when the node enters the scene tree for the first time.
func _ready():
	curr_scene = get_tree().current_scene.name
	puddle_tops.append($PuddleTop)
	puddles.append($Puddle)
	if(curr_scene == "Easy" or curr_scene == "Medium"):
		puddle_tops.append($PuddleTop2)
		puddle_tops.append($PuddleTop3)
		puddles.append($Puddle2)
		puddles.append($Puddle3)
		if(curr_scene == "Medium"):
			puddle_tops.append($PuddleTop4)
			puddle_tops.append($PuddleTop5)
			puddles.append($Puddle4)
			puddles.append($Puddle5)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(scrolling == true):
		$Background.scroll_offset.x -= 60*delta

func flask_throw():
	var index = get_parent().question_number
	puddle_tops[index].stop()
	puddle_tops[index].play("default")

func move_forward():
	scrolling = true
	var tween : Tween = create_tween()
	var new_pos = Vector2(self.position[0] + -1152, 0)
	tween.tween_property(self, "position", new_pos, 2)
	await tween.finished
	scrolling = false

func success():
	var index = get_parent().question_number
	puddles[index].stop()
	puddles[index].play("default")
