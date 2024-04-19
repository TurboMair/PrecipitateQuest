extends Node

const CHAR_READ_RATE = 0.02 

#--*-----------Textbox Onready Items-------------------*--
@onready var textbox_container = $"../TextboxContainer"
@onready var label = $"../TextboxContainer/MarginContainer/HBoxContainer/Label"
@onready var tween : Tween = create_tween()
#--*-----------Textbox Onready Items-------------------*--



# Called when the node enters the scene tree for the first time.
func _ready():
	var curr_scene = get_tree().current_scene.name
	#print("This is the output" + curr_scene.to_string())
	print(curr_scene)
	if(curr_scene == "Tutorial"):
		update_dolphin_textbox("Welcome to the Ocean Lab tutorial. I will be your guide. Press any phial button.")
	elif (curr_scene == "Easy"):
		update_dolphin_textbox("Welcome to the Easy Level")
	elif (curr_scene == "Medium"):
		update_dolphin_textbox("Welcome to the Medium Level")
	else:
		update_dolphin_textbox("This is the hard level")
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func hide_textbox():
	label.text = ""
	textbox_container.hide()

func show_textbox(toggled_on):
	#set dolphin prompt to the label
	textbox_container.visible = toggled_on
	#update_dolphin_textbox("Welcome to the Ocean Laboratory")
	#add_prompt(based on conditon)
	
func update_dolphin_textbox(next_text):
	label.text = ""
	label.text = next_text
	label.visible_ratio = 0.0
	#show_textbox()
	tween.is_running()
	tween = create_tween() #tween needs to be created before we can work with it
	tween.tween_property(label, "visible_ratio", 1, CHAR_READ_RATE * len(next_text)).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT).set_delay(0.1)
	#tween.tween_property(label, "visible_ratio", 1, 5).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT).set_speed_scale(CHAR_READ_RATE * len(next_text))
	tween.connect("finished", on_tween_finished)


 #Callback function to be called when the tween completes
func on_tween_finished():
	print("Tween done!")
