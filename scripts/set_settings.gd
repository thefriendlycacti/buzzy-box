extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# Set settings menu items to what is in global vars
	$Panel/text_boxspawnratedecrease/data_boxspawnratedecrease.text = str(GlobalVars.boxspawnratedecrease)
	$Panel/text_boxspawnratestart/data_boxspawnratestart.text = str(GlobalVars.boxspawnratestart)
	$Panel/text_boxspeedstart/data_boxstartspeed.text = str(GlobalVars.boxspeedstart)
	$Panel/text_boxspawnratedecrease/data_boxspawnratedecrease.text = str(GlobalVars.boxspawnratedecrease)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_savesettings_pressed():
	# Set global vars to what is in the boxes
	GlobalVars.boxspawnratedecrease = float($Panel/text_boxspawnratedecrease/data_boxspawnratedecrease.text)
	GlobalVars.boxspawnratestart = float($Panel/text_boxspawnratestart/data_boxspawnratestart.text)
	GlobalVars.boxspeedstart = float($Panel/text_boxspeedstart/data_boxstartspeed.text)
	GlobalVars.boxspawnratedecrease = float($Panel/text_boxspawnratedecrease/data_boxspawnratedecrease.text)
	get_tree().change_scene("res://main_menu.tscn")
	pass # Replace with function body.



func _on_dontsave_pressed():
	get_tree().change_scene("res://main_menu.tscn")
	pass # Replace with function body.
