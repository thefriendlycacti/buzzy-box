extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_try_again_pressed():
	get_tree().change_scene("res://world.tscn") 
	GlobalVars.boxspeed = 200 # reset this so its not tocrazy
