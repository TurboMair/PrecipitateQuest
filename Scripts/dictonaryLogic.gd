extends Node

var correct_dict = {
	"K_Cl":"Hg",#problem 1
	"Na2_C2O4":"Ca", #problem 2
	"K_F":"Mg", #problem 3
	"Al_Cl3":"OH",#problem 4
	"Na2_CO3":"Ca",#5
	"(NO2)2_Pb":"PO4",#6
	"Br2_Ca":"CO3",#7
	"K_NO3":"help",#8 - no solution
	"Cl3_Fe":"3OH",#9
	"Na3_PO4":"2PO4",#10
	"K3_AsO4":"Fe",#11
	"Cd_SO4":"S",#12
	"Cr_SCN3":"3OH",#13
	"Li_ClO4":"help",#14 - no solution
	"NO3_Ag":"",#15
	"K2_CrO4":"Ba",#16
	"Na4_PO4_OH":"Ca5(PO4)3(OH)",#17 ?
	"Na4_AsO4_OH":"Cu_Cl2",#18 ?
	"Hg":["K2S", "NA2"]#19 #20
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
	
