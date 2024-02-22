extends CanvasLayer
	
@onready var textbox_container = $TextboxContainer
@onready var label = $TextboxContainer/MarginContainer/HBoxContainer/label
@onready var tween : Tween = create_tween()

# Called when the node enters the scene tree for the first time.

const CHAR_READ_RATE = 0.5

func _ready():
	#hide_textbox()
	update_dolphin_textbox("Welcome to the Ocean Laboratory, where the water is contaminated with lead (Pb). My name is Dolph and I shall LEAD you through this treacherous land.")
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

var dialogue_dict = {
	"KCl": "Chloride ions interfere with chemical oxygen demand (COD) measurements. Also, sometimes the concentration of the chloride ion is measured in aqueous (water) samples by forming solid AgCl. For example, the salt concentration in urine can be measured this way.", 
	"Na2C2O4":"Oxalate ions are found in food and beverages such as Pepsi…They form kidney stones. The majority of kidney stones are made of CaC2O4 or Ca3(PO4)2. They form by precipitation reactions in the body. ",
	"KF":"Fluoride is naturally found in some water. Too much of it causes skeletal fluorosis. If water contains too much fluoride ion, it can be removed by precipitating it out as an insoluble ionic compound.",
	"AlCl3":"The aluminum ion is toxic to plants. It also precipitates out on fish gills and suffocates them. Excess aluminum ion in water can be removed through precipitation. ",
	"Na2CO3":"In water treatment, a protective coating of CaCO3 is intentionally formed over lead and iron pipes. ",
	"(NO2)2Pb":"The concentration of lead ion is kept low in water that is in contact with lead pipes by adding phosphate ion. A continual supply of phosphate ion in water keeps lead out of the water and in a solid on the pipe surface. ",
	"Br2Ca":"Calcium and magnesium ions contribute to water hardness. Hard water leads to soap scum and boiler scale. One way to remove calcium and magnesium ions is through precipitation reactions. ",
	"KNO3":"Nitrates from fertilizer end up in well water. They can lead to adverse health effects. The nitrate ion is difficult to remove since all nitrates are soluble. Consequently, a method other than precipitation must be used to remove nitrate. ",
	"FeCl":"Iron ions are found in the reduced (Fe2+) form in well water that lacks dissolved O2. When Fe2+ is exposed to air, it is oxidized to Fe3+. Fe3+ then reacts with hydroxide ions in water to form the rust-colored precipitate Fe(OH)3.",
	"Na3PO4":"Phosphate is used as a fertilizer on farms, lawns, golf courses etc. Some of the phosphate ends up in surface water, such as lakes like the Mozingo reservoir. Too much phosphate in surface water such as Mozingo lead to excess algal growth. Excess algal growth leads to many water quality problems. Consequently, excess phosphate is removed by precipitation reactions in water treatment plants. ",
	"K3AsO4":"Arsenate is found in minerals. It can make its way into groundwater and be carcinogenic. There are several ways to remove the arsenate ion from water. One way is through precipitation reactions. ",
	"CdSO4":"Cadmium is another toxic heavy metal that can be found in drinking water. One way to remove it is through precipitation reactions. ",
	"CrSCN3":"Chromium is another toxic heavy metal that can be found in drinking water. One way to remove it is through precipitation reactions.",
	"LiClO4":"The perchlorate ion is used in explosives such as fireworks and in military applications. Due to negative health effects, perchlorate is limited to 10 µg/L in drinking water. Since all perchlorates are soluble, it is difficult to remove. It must be removed with a method other than precipitation. ",
	"NO3Ag":"The silver ion is used to form solid AgCl when measuring the concentration of the chloride ion in various aqueous samples. ",
	"K2CrO4":"Chromium is a toxic heavy metal that can be found in water. In water treatment, Fe3+ is used to reduce chromate to Cr3+, which can be removed as a hydroxide.",
	"Na4PO4OH":"Tooth enamel and bone are ionic compounds made of calcium, phosphate, and hydroxide ions. Minerals with this same chemical formula, but different crystalline structures are found in nature. They all form by precipitation reactions. ",
	"Na4AsO4OH":"Arsenate is found in minerals. It can make its way into groundwater and be carcinogenic. There are several ways to remove the arsenate ion from water. One way is through precipitation reactions. ",
	"Hg":"Mercury (I) is the polyatomic ion form of mercury. Like mercury (II), it can be removed from water using precipitation reactions. "
	#["K2S", "NA2CO3"],#19 #20
}


func update_dolphin_textbox(next_text):
	label.text = next_text
	show_textbox()
	tween.tween_property(label, "visible_ratio", 1, 5).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT).set_delay(0.1)
	tween.connect("finished", on_tween_finished)


# Callback function to be called when the tween completes
func on_tween_finished():
	print("Tween done!")
