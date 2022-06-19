extends Node2D


var currentDifficulty = 0


func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("exit"):
		get_tree().quit()


func set_vibration(level):
	var data = {
		"command":"Function",
		"action":"Vibrate:"+str(level),
		"timeSec":15,
		"apiVer":1,
	}
	var query = JSON.print(data)
	var headers = ["Content-Type: application/json"]
	$HTTPRequest.request("http://"+GlobalVars.deviceip+":20010/command", headers,true, HTTPClient.METHOD_POST, query)




func _on_difficulty_timeout():
	currentDifficulty += 1
	
	set_vibration(currentDifficulty)
	$spawnspot/Timer.wait_time -= .2
	GlobalVars.boxspeed += 50
	$currentDifficultyText.text = str(currentDifficulty)
