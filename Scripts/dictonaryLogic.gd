extends Node

var health = 3

var correct_dict = {
	"KCl":"Hg2(NO3)2",#problem 1
	"Na2C2O4":"CaCl2", #problem 2
	"KF":"MgSO4", #problem 3
	"AlCl3":"NaOH",#problem 4
	"Na2CO3":"CaO",#5
	"(NO2)2Pb":"Na3PO4",#6
	"Br2Ca":"K2CO3",#7
	"KNO3":"help",#8 - no solution
	"FeCl":"NaOH",#9
	"Na3PO4":"CaCl2",#10
	"K3AsO4":"FeCl2",#11
	"CdSO4":"Na2S",#12
	"CrSCN3":"NaOH",#13
	"LiClO4":"help",#14 - no solution
	"NO3Ag":"NaCl",#15
	"K2CrO4":"BaCl2",#16
	"Na4PO4OH":"Ca(NO3)2",#17 ?
	"Na4(AsO4)OH":"CuCl2",#18 ?
	"Cl2Hg(II)O6": "K2S", #19
	"Hg(I)(NO3)2": "NA2CO3"#20
	}
var problem_dict = {
	"KCl":["Hg2(NO3)2", "AgBr", "MgCO3"],#problem 1
	"Na2C2O4":["CaCl2", "CaSO4","KCl"], #problem 2
	"KF":["MgSO4", "CuS","Ca3(PO4)2"], #problem 3
	"AlCl3":["NaOH", "Ba3(PO4)3", "KClO3"],#problem 4
	"Na2CO3":["CaO", "NH4I", "Fe(OH)3"],#5
	"(NO2)2Pb":["Na3PO4", "ZnClO4", "NiS"],#6
	"Br2Ca":["K2CO3", "MgCl2", "NH4C2H3O2"],#7
	"KNO3":["FeCl3", "Al2(SO4)3", "Ag2CO3"],#8 - no solution
	"FeCl":["NaOH", "KSCN", "LiC2H3O2"],#9
	"Na3PO4":["CaCl2", "NH4F", "KI"],#10
	"K3AsO4":["FeCl2","NaBr", "KF"],#11
	"CdSO4":["Na2S", "NaC2H3O2", "K2SO4"],#12
	"CrSCN3":["NaOH", "KClO4", "Na2SO4"],#13
	"LiClO4":["CuO", "AlBr3", "Ca(OH)2"],#14 - no solution
	"NO3Ag":["NaCl", "KF", "Ca(ClO4)2"],#15
	"K2CrO4":["BaCl2", "KCl", "LiBr"],#16
	"Na4PO4OH":["Ca(NO3)2", "NaOH", "KBr"],#17 ?
	"Na4AsO4OH":["CuCl2", "KC2H3O2", "NaI"],#18 ?
	"Cl2Hg(II)O6":["K2S", "KBr", "NaCl"], #19
	 "Hg(I)(NO3)2": ["Na2CO3", "KClO4", "LiNO3"]#20
	}
#create a update_phial script to wipe old phials and replace with new text
#Call this anytime the player clicks on the phial
func throw_phial(puddle_key, phial_compound):
	if phial_compound == correct_dict[puddle_key]:
		turn_puddle_solid(puddle_key)
		print("correct")
		#update buttons and puddle
		$RewardSound.play()
	else:
		handle_non_matching_compound()
		print("incorrect")
		health -= 1
		match health:
			0:
				pass
			1:
				pass
			2:
				pass
			_:
				pass
		
		if(health == 2):
			$Heart.hide()
		
		if(health == 1):
			$Heart2.hide()
		
		if(health == 0):
			$Heart3.hide()

func turn_puddle_solid(puddle_key):
	#implement the logic for turning the puddle solid
	#change button text & puddle text Function call
	return

func handle_non_matching_compound():
	#implement losing life 
	#respawn
	#any other logic for invalid phial
	return
	
func startGameText():
	var randomList = problem_dict["KCl"]
	get_parent().puddle = "KCl"
	randomList.shuffle()
	get_parent().button1 = randomList[0]
	randomList.pop_front()
	get_parent().button2 = randomList[0]
	randomList.pop_front()
	get_parent().button3 = randomList[0]
	randomList.pop_front()
	pass
