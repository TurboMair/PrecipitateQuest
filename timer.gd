extends Node

@onready var label = %Label

var level_time = 0.0
var start_level_msec = 301000.0 #300 secs

#func _start():
#	start_level_msec = Time.get_ticks_msec()
	
func _process(delta):
	
	level_time = start_level_msec - Time.get_ticks_msec()
	label.text = "Time Left: " + str(round(level_time / 1000))
	
