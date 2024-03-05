extends Node2D

var music_playing = true
var background_music: AudioStreamPlayer2D

func _ready():
	background_music = $"background-music"
	background_music.play()
	
	
# --------------------------------------------------------------
# Main Menu code
# --------------------------------------------------------------

# Start Button - Go to the Map
func _on_mainstart_btn_pressed():
	$mapMenu.visible = true
	$mainMenu.visible = false
	$optionMenu.visible = false
	$descMenu.visible = false
	

# Options Button - Go to the option
func _on_mainoption_btn_pressed():
	$mapMenu.visible = false
	$mainMenu.visible = false
	$optionMenu.visible = true
	$descMenu.visible = false

func _on_maindesc_btn_pressed():
	$mapMenu.visible = false
	$mainMenu.visible = false
	$optionMenu.visible = false
	$descMenu.visible = true
	
# --------------------------------------------------------------
# Options code
# --------------------------------------------------------------

# Back Button: Go back to the main menu
func _on_optionback_btn_pressed():
	$mapMenu.visible = false
	$mainMenu.visible = true
	$optionMenu.visible = false
	$descMenu.visible = false
	
# Volume setup
func volume(bus_index, value):
	AudioServer.set_bus_volume_db(bus_index, linear_to_db(value))
	
# Master slider
func _on_master_value_changed(value):
	volume(0, value)
	
# Music slider
func _on_music_value_changed(value):
	volume(1, value)

# Sound fx slider
func _on_sfx_value_changed(value):
	volume(2, value)

# Master mute button
#func _on_optionmaster_box_toggled(toggled_on):
#	music_playing = not music_playing
#	if music_playing:
#		background_music.stream_paused = !background_music.stream_paused
#		$"sound-effect".play()
#	else:
#		background_music.stop()
#		$"sound-effect".stop()
	
# --------------------------------------------------------------
# Map code
# --------------------------------------------------------------

# Easy level Button: Go to the easy level game
func _on_mapeasy_btn_pressed():
	$mapMenu.visible = false
	$mainMenu.visible = false
	$optionMenu.visible = false
	$descMenu.visible = false
	get_tree().change_scene_to_file("res://lvl_one.tscn")

# Medium level Button: Go to the medium level game
func _on_mapmedium_btn_pressed():
	$mapMenu.visible = false
	$mainMenu.visible = false
	$optionMenu.visible = false
	$descMenu.visible = false
	get_tree().change_scene_to_file("res://lvl_two.tscn")

# Hard level Button: Go to the hard level game
func _on_maphard_btn_pressed():
	$mapMenu.visible = false
	$mainMenu.visible = false
	$optionMenu.visible = false
	$descMenu.visible = false
	get_tree().change_scene_to_file("res://lvl_three.tscn")
	
# Tutorial Button: Go to the tutorial
func _on_maptutorial_btn_pressed():
	$mapMenu.visible = false
	$mainMenu.visible = false
	$optionMenu.visible = false
	$descMenu.visible = false
	get_tree().change_scene_to_file("res://tutorial.tscn")

# Back Button: Go back to the main menu
func _on_mapback_btn_pressed():
	$mapMenu.visible = false
	$mainMenu.visible = true
	$optionMenu.visible = false
	$descMenu.visible = false
