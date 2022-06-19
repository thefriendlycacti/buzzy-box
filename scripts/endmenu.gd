extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/score.text = "Your highest dificutly last round: "+ str(GlobalVars.highestdifficulty)
	pass # Replace with function body.

func _on_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_try_again_pressed():
	get_tree().change_scene("res://world.tscn") 
	GlobalVars.boxspeed = 200 # reset this so its not to crazy


func _on_goto_main_pressed():
	get_tree().change_scene("res://main_menu.tscn")
	GlobalVars.boxspeed = 200 # reset this so its not to crazy
