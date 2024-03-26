extends CanvasLayer

var button_options = ["","",""]
var puddle = ""
var curr_scene = ""
# Called when the node enters the scene tree for the first time.

func _ready():
	curr_scene = get_tree().current_scene.name
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
	if(curr_scene == "Tutorial"):
		get_tree().call_group("flask_reactions", "flask_throw")
		$ScienceScript.flask_throw(puddle, button_options[button])
		$ScienceScript.flask_throw(puddle, button_options[button])
		$Textbox/TextboxScript.update_dolphin_textbox(tutorial_dict["phial"])
	else:		
		#if textbox is active show hints
		if ($Textbox/TextboxContainer.visible == true):
			print("Disbaling throw function while hints are being shown")
			#show_hints(hint_dict[puddle])
		else:
			#haebin
			#if textbox is inactive meaning player is playing, throw the chemical
			get_tree().call_group("flask_reactions", "flask_throw")
			$ScienceScript.flask_throw(puddle, button_options[button])

func _on_pause_button_toggled(toggled_on):
	$Pause.visible = toggled_on
	$Health.visible = !toggled_on
	if(curr_scene == "Tutorial"):
		$Textbox/TextboxScript.update_dolphin_textbox(tutorial_dict["pause"])
	else:
		$Textbox/TextboxContainer.visible = toggled_on
	$ProgressBar.visible = !toggled_on
	if ($Textbox/TextboxContainer.visible):
		$Textbox/TextboxScript.update_dolphin_textbox(hint_dict[puddle])
		print(hint_dict[puddle])
	if(curr_scene == "Tutorial"):
		$Textbox/TextboxScript.update_dolphin_textbox(tutorial_dict["pause"])


func _on_help_button_toggled(toggled_on):
	$Flasks.visible = !toggled_on
	$ProgressBar.visible = !toggled_on
	$PauseButton.visible = !toggled_on
	$Textbox/TextboxScript.update_dolphin_textbox(tutorial_dict["help"])

func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://Menu/main_menu.tscn")

##function to show hint for individual flask button pressed
#func show_hints(compound):
	#if (compound == "Hg2(NO3)2"):
		#$Textbox/TextboxScript.update_dolphin_textbox("Hg2(NO3)2")
	#elif (compound == "AgBr"):
		#$Textbox/TextboxScript.update_dolphin_textbox("AgBr")
	#elif (compound ==  "MgCO3"):
		#$Textbox/TextboxScript.update_dolphin_textbox("MgCO3")

var hint_dict = {
	"KCl": "A white solid formed from the reaction of a colorless salt with a colorless solution, often used in qualitative analysis.",
	"Na2C2O4": "When these two solutions mix, expect the unexpected: a white precipitate that dances under ultraviolet light.",
	"KF": "Mixing these compounds yields no reaction, for they prefer to stay dissolved and part ways in the solution.",
	"AlCl3": "When a metal salt meets a base, a gelatinous precipitate emerges, reminiscent of a sci-fi creature.",
	"Na2CO3": "Watch as a bubbly reaction produces a chalky white solid, perfect for neutralizing acidic environments.",
	"(NO2)2Pb": "Lead ions and phosphate ions engage in a dance, forming a golden-yellow precipitate with a penchant for settling.",
	"Br2Ca": "When bromine meets a metal salt, a powdery substance emerges, akin to dusting powdered sugar on a cold surface.",
	"KNO3": "These two compounds remain aloof in solution, refusing to mingle, much like introverts at a crowded party.",
	"FeCl": "Iron ions in search of hydroxide ions find solace in a gelatinous solid, reminiscent of rusting ships in the ocean.",
	"Na3PO4": "Mixing these solutions results in a cloudy reaction, forming tiny crystals that settle like snowflakes.",
	"K3AsO4": "Arsenic and iron ions join forces, creating a precipitate that resembles a mosaic of fine particles.",
	"CdSO4": "A murky transformation unfolds as sulfide ions and a metal salt react, reminiscent of ink spreading in water.",
	"CrSCN3": "Chromium ions reluctantly embrace hydroxide ions, forming a gel-like substance reminiscent of wet clay.",
	"LiClO4": "A lone compound remains unchanged, indifferent to the chemical dance around it, like a stoic statue in a bustling city square.",
	"NO3Ag": "Silver ions find a new partner in chloride ions, forming a milky white solid with a reflective surface.",
	"K2CrO4": "Chromate ions and a metal salt unite, producing a vibrant yellow solid reminiscent of sunny days.",
	"Na4PO4OH": "A mysterious reaction unfolds, yielding a solid that hides its true identity, much like a secret code waiting to be deciphered.",
	"Na4(AsO4)OH": "Arsenate ions and a metal salt engage in a clandestine affair, resulting in a solid with an enigmatic hue.",
	"Cl2Hg(II)O6": "Mercury ions and sulfide ions create a dark precipitate reminiscent of midnight shadows.",
	"Hg(I)(NO3)2": "Mercury ions react with carbonate ions, resulting in a fluffy white solid with a tendency to disperse like clouds in the sky."
}

var tutorial_dict = {
	"tutorial" : "Welcome to the Ocean Lab tutorial. Press the flask button to throw a phial",
	"phial": "When this button is pressed, the player throws a phial hoping to form a precipitate in the puddle. Now press the pause button.",
	"speaker": "Fancy some music? Toggle it on and off with this button",
	"help": "this button's functionality is under construction",
	"exit" : "press the exit button if you are ready",
	"pause" : "The pause button pulls me up for help and the main menu. Press any menu item",
	"play" : "press play when you are ready to throw the phial"
}
