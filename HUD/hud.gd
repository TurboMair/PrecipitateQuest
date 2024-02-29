extends Node2D

@onready var tween : Tween = create_tween()

const CHAR_READ_RATE = 0.5

var button1 
var button2
var button3
var puddle 
var science

@onready var textbox_container = $DolphinTextBox/TextboxContainer
@onready var label = $DolphinTextBox/TextboxContainer/MarginContainer/HBoxContainer/label
@onready var help_button = $HUD/HelpButton
@onready var play_button = $HUD/PauseButton
# Called when the node enters the scene tree for the first time.

func _ready():
	textbox_container.hide()
	$HelpButton.hide()
	$SoundButton.hide()
	$ExitButton.hide()
	science = $ScienceScript
	science.startGameText()
	updateText()

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
		update_dolphin_textbox("Welcome to the Ocean Laboratory, Press the help button to call me")
		#show_textbox()
	
	if(toggled_on == false):
		$FlaskHolder.show()
		$ProgressBar.show()
		$PauseButton.show()
		hide_textbox()

func updateText():
	$ChemButton/Label.text = button1
	$ChemButton2/Label.text = button2
	$ChemButton3/Label.text = button3
	$Label.text = puddle


func _on_chem_button_pressed():
	science.throw_phial(puddle, button1)
	pass # Replace with function body.


func _on_chem_button_2_pressed():
	science.throw_phial(puddle, button2)
	
	pass # Replace with function body.


func _on_chem_button_3_pressed():
	science.throw_phial(puddle, button3)
	pass # Replace with function body.
	
	
#-----***------===================================-------***------
# Textbox Script

func hide_textbox():
	label.text = ""
	textbox_container.hide()

func show_textbox():
	#set dolphin prompt to the label
	textbox_container.show()
	#update_dolphin_textbox("Welcome to the Ocean Laboratory")
	#add_prompt(based on conditon)
	
func update_dolphin_textbox(next_text):
	label.text = ""
	label.text = next_text
	show_textbox()
	#tween.is_running()
	tween = create_tween() #tween needs to be created before we can work with it
	tween.tween_property(label, "visible_ratio", 1, 5).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT).set_delay(0.1)
	tween.connect("finished", on_tween_finished)


# Callback function to be called when the tween completes
func on_tween_finished():
	print("Tween done!")


func _on_chem_button_button_up():
	update_dolphin_textbox("Hg2NO3 is insolube in water!")


func _on_chem_button_2_button_up():
	update_dolphin_textbox("AgBr is insolube in water!")


func _on_chem_button_3_button_up():
	update_dolphin_textbox("MgCO3 is solube in water!")
