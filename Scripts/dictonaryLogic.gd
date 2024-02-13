extends Node

var puddle_dict = {
	"Cl":"Hg",#problem 1
	"C2O4":"Ca", #problem 2
	"F":"Mg", #problem 3
	"Al":"OH",#problem 4
	"CO3":"Ca",#5
	"Pb":"PO4",#6
	"Ca":"CO3",#7
	"NO3":"",#8 - no solution
	"Fe":"3OH",#9
	"PO4":"2PO4",#10
	"AsO4":"Fe",#11
	"Cd":"S",#12
	"Cr":"3OH",#13
	"Li":"",#14 - no solution
	"ClO4":"Ag",#15
	"CrO4":"Ba",#16
	"":"",#17 ?
	"?":"",#18 ?
	"Hg":["S", "CO3"]#19 #20
	
	
	}
#Call this anytime the player clicks on the phial
func throw_phial(phial_compound, puddle_key):
	if phial_compound == puddle_dict[puddle_key]:
		turn_puddle_solid(puddle_key)
	else:
		handle_non_matching_compound()

func turn_puddle_solid(puddle_key):
	#implement the logic for turning the puddle solid
	return

func handle_non_matching_compound():
	#implement losing life 
	#respawn
	#any other logic for invalid phial
	return
	
func process_button(value):
	print(value)
