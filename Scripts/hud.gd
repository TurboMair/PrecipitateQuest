extends CanvasLayer

var button_options = ["","",""]
var puddle = ""
# Called when the node enters the scene tree for the first time.

func _ready():
	$Pause.hide()
	$ScienceScript.startGameText()
	updateText()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func updateText():
	$Flasks/FlaskHolder/Option1.text = button_options[0]
	$Flasks/FlaskHolder/Option2.text = button_options[1]
	$Flasks/FlaskHolder/Option3.text = button_options[2]
	$Puddle.text = puddle

func _on_chem_button_pressed(button):
	get_tree().call_group("flask_reactions", "flask_throw")
	$ScienceScript.flask_throw(puddle, button_options[button])

func _on_pause_button_toggled(toggled_on):
	$Pause.visible = toggled_on
	$HealthBar.visible = !toggled_on
	$ProgressBar.visible = !toggled_on

func _on_help_button_toggled(toggled_on):
	$Flasks.visible = !toggled_on
	$ProgressBar.visible = !toggled_on
	$PauseButton.visible = !toggled_on

func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://Menu/main_menu.tscn")
