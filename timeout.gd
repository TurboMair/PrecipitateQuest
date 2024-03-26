extends Timer
@onready var label = %Label

var level_time = 0.0
var start_level_msec = 300000.0

func _ready():
	start()

func _process(delta):
	level_time = start_level_msec - Time.get_ticks_msec()
	label.text = "Time Left: " + str(round(level_time / 1000))
	if(level_time <= 0):
		label.text = "Time's Up!"
		
	_on_Timer_timeout()

	
	

func _on_Timer_timeout():
	# Timer has expired, perform actions when the timer runs out		
	await get_tree().create_timer(5).timeout
	get_tree().change_scene_to_file("res://lvl_one.tscn")

