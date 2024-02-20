extends Node2D


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
		$ExitButton.hide()
		$SoundButton.hide()
		$Flask1.hide()
		$Flask2.hide()
		$Flask3.hide()
	
	if(toggled_on == false):
		$FlaskHolder.show()
		$ProgressBar.show()
		$PauseButton.show()
		$ExitButton.show()
		$SoundButton.show()
		$Flask1.show()
		$Flask2.show()
		$Flask3.show()
	
	

func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://exit.tscn")


func _on_help_button_pressed():
	get_tree().change_scene_to_file("res://help.tscn")
