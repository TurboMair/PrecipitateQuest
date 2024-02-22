extends Node2D

var button1 = "AgBr"
var button2 = "MgCO3"
var button3 = "Hg2(NO3)2"
var puddle = "KCl"
# Called when the node enters the scene tree for the first time.

func _ready():
	$HelpButton.hide()
	$SoundButton.hide()
	$ExitButton.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pause_button_toggled(toggled_on):
	if(toggled_on == true):
		$Heart.hide()
		$Heart2.hide()
		$Heart3.hide()
		$HelpButton.show()
		$SoundButton.show()
		$ExitButton.show()
	
	if(toggled_on == false):
		$Heart.show()
		$Heart2.show()
		$Heart3.show()
		$HelpButton.hide()
		$SoundButton.hide()
		$ExitButton.hide()

func _on_help_button_toggled(toggled_on):
	if(toggled_on == true):
		$FlaskHolder.hide()
		$ProgressBar.hide()
		$PauseButton.hide()
	
	if(toggled_on == false):
		$FlaskHolder.show()
		$ProgressBar.show()
		$PauseButton.show()

func _on_button1_pressed():
	$ScienceScript.throw_phial(puddle, button1)
	
func _on_button2_pressed():
	$ScienceScript.throw_phial(puddle, button2)
	
func _on_button3_pressed():
	$ScienceScript.throw_phial(puddle, button3)
