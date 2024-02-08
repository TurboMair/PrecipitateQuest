extends Node2D

var dolphinNode : Node2D
var textBox : TextEdit
var outline : Sprite
var closeButton : Button
var dialogueOptions : Dictionary

# Called when the node enters the scene tree for the first time.
func _ready():
	# Assuming you have the Dolphin node, TextBox, TextBoxOutline, and CloseButton added as child nodes
	dolphinNode = $Dolphin
	textBox = $TextBox
	outline = $TextBoxOutline
	closeButton = $CloseButton

	# Load dialogue options from a dictionary or JSON file
	dialogueOptions = {
		1: "Easy dialogue",
		2: "Medium dialogue",
		3: "Hard dialogue"
		# Add more options as needed
	}

	# Connect the button's pressed signal to the close_textbox function
	# closeButton.connect("pressed", self, "close_textbox")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func open_textbox(difficulty_level: int, puddles_content: String) -> void:
	# Show the necessary nodes
	dolphinNode.visible = true
	textBox.visible = true
	outline.visible = true

	# Play dolphin sound
	play_dolphin_sound()

	# Select dialogue option based on difficulty level
	var dialogueOption = get_dialogue_option(difficulty_level)
	textBox.text = dialogueOption.format(puddles_content)

func close_textbox() -> void:
	# Hide the necessary nodes
	dolphinNode.visible = false
	textBox.text = ""
	outline.visible = false

func play_dolphin_sound() -> void:
	# Implement the logic to play dolphin sound here
	# For example, use the AudioStreamPlayer node
	# assuming you have an AudioStreamPlayer named DolphinSound
	$DolphinSound.play()

func get_dialogue_option(difficulty_level: int) -> String:
	# Retrieve the dialogue option based on difficulty level
	return dialogueOptions.get(difficulty_level, "Default dialogue")
