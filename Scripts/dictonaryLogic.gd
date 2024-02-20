extends Node

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
	"Na4AsO4OH":"CuCl2",#18 ?
	"Hg":["K2S", "NA2CO3"]#19 #20
	}
var problem_dict = {
	"KCl":["Hg2(NO3)2", "AgBr", "MgCO3"],#problem 1
	"Na2C2O4":["CaCl2", "CaSO4","KCl"], #problem 2
	"KF":["MgSO4", "CuS"], #problem 3
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
	"Na4AsO4OH":"CuCl2",#18 ?
	"Hg":["K2S", "NA2CO3"]#19 #20
	}
#create a update_phial script to wipe old phials and replace with new text
#Call this anytime the player clicks on the phial
func throw_phial(puddle_key, phial_compound):
	if phial_compound == correct_dict[puddle_key]:
		turn_puddle_solid(puddle_key)
		print("correct")
	else:
		handle_non_matching_compound()
		print("inccorect")

func turn_puddle_solid(puddle_key):
	#implement the logic for turning the puddle solid
	#change button text & puddle text Function call
	return

func handle_non_matching_compound():
	#implement losing life 
	#respawn
	#any other logic for invalid phial
	return
	
func update_text(b1, b2, b3, puddle):
	$ChemButton.text = b1
	$ChemButton2.text = b2
	$ChemButton.text = b3
	
