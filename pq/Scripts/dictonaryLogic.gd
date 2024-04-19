extends Node

var correct_dict = {
	"KCl":"Hg2(NO3)2",#problem 1
	"Na2C2O4":"CaCl2", #problem 2
	"KF":"MgSO4", #problem 3
	"AlCl3":"NaOH",#problem 4
	"Na2CO3":"CaO",#5
	"(NO2)2Pb":"Na3PO4",#6
	"Br2Ca":"K2CO3",#7
	#"KNO3":"help",#8 - no solution
	"FeCl":"NaOH",#9
	"Na3PO4":"CaCl2",#10
	"K3AsO4":"FeCl2",#11
	"CdSO4":"Na2S",#12
	"CrSCN3":"NaOH",#13
	#"LiClO4":"help",#14 - no solution
	"NO3Ag":"NaCl",#15
	"K2CrO4":"BaCl2",#16
	"Na4PO4OH":"Ca(NO3)2",#17 ?
	"Na4(AsO4)OH":"CuCl2",#18 ?
	"Cl2Hg(II)O6": "K2S", #19
	"Hg(I)(NO3)2": "Na2CO3"#20
	}
var problem_dict = {
	"KCl":["Hg2(NO3)2", "AgBr", "MgCO3"],#problem 1
	"Na2C2O4":["CaCl2", "CaSO4","KCl"], #problem 2
	"KF":["MgSO4", "CuS","Ca3(PO4)2"], #problem 3
	"AlCl3":["NaOH", "Ba3(PO4)3", "KClO3"],#problem 4
	"Na2CO3":["CaO", "NH4I", "Fe(OH)3"],#5
	"(NO2)2Pb":["Na3PO4", "ZnClO4", "NiS"],#6
	"Br2Ca":["K2CO3", "MgCl2", "NH4C2H3O2"],#7
	#"KNO3":["FeCl3", "Al2(SO4)3", "Ag2CO3"],#8 - no solution
	"FeCl":["NaOH", "KSCN", "LiC2H3O2"],#9
	"Na3PO4":["CaCl2", "NH4F", "KI"],#10
	"K3AsO4":["FeCl2","NaBr", "KF"],#11
	"CdSO4":["Na2S", "NaC2H3O2", "K2SO4"],#12
	"CrSCN3":["NaOH", "KClO4", "Na2SO4"],#13
	#"LiClO4":["CuO", "AlBr3", "Ca(OH)2"],#14 - no solution
	"NO3Ag":["NaCl", "KF", "Ca(ClO4)2"],#15
	"K2CrO4":["BaCl2", "KCl", "LiBr"],#16
	"Na4PO4OH":["Ca(NO3)2", "NaOH", "KBr"],#17 ?
	"Na4(AsO4)OH":["CuCl2", "KC2H3O2", "NaI"],#18 ?
	"Cl2Hg(II)O6":["K2S", "KBr", "NaCl"], #19
	 "Hg(I)(NO3)2": ["Na2CO3", "KClO4", "LiNO3"]#20
	}

var problem_options = correct_dict.keys()
#create a update_phial script to wipe old phials and replace with new text
#Call this anytime the player clicks on the phial
func flask_throw(puddle_key, phial_compound):
	if phial_compound == correct_dict[puddle_key]:
		get_parent().correct()
		print("correct")
		#update buttons and puddle
	else:
		get_parent().incorrect()
		print("incorrect")

func startGameText():
	var randomIndex = randi() % problem_options.size()
	var randomKey = problem_options[randomIndex]
	problem_options.remove_at(randomIndex)
	var randomList = problem_dict[randomKey]
	get_parent().puddle = randomKey
	randomList.shuffle()
	get_parent().button_options = randomList
	get_parent().call("updateText")
