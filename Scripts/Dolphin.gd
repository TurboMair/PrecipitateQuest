extends CanvasLayer


var puddle_dict = {
	"KCl": "Chloride ions interfere with chemical oxygen demand (COD) measurements. Also, sometimes the concentration of the chloride ion is measured in aqueous (water) samples by forming solid AgCl. For example, the salt concentration in urine can be measured this way.", 
	"Na2C2O4":"",
	"KF":"",
	"AlCl3":"",
	"Na2CO3":"",
	"(NO2)2Pb":"",
	"Br2Ca":"",
	"KNO3":"",
	"FeCl":"",
	"Na3PO4":"",
	"K3AsO4":"",
	"CdSO4":"",
	"CrSCN3":"",
	"LiClO4":"",
	"NO3Ag":"",
	"K2CrO4":"",
	"Na4PO4OH":"",
	"Na4AsO4OH":"",
	"Hg":["K2S", "NA2CO3"],#19 #20
}
	
@onready var textbox_container = $TextboxContainer
@onready var label = $TextboxContainer/MarginContainer/HBoxContainer/label
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func hide_textbox():
	label.text = ""
	textbox_container.hide()
	
func show_textbox():
	#set dolphin prompt to the label
	textbox_container.show()
	#add_prompt(based on conditon)
