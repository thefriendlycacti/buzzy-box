extends Control



var connected = false


func _ready():
 pass






func _process(delta):
	if connected == true:
		$Panel/playButton.disabled = false
	pass


func _on_playButton_pressed():
	if connected == true:
		print("start!")
		get_tree().change_scene("res://world.tscn")
	pass # Replace with function body.


func _on_connectButton_pressed():
	var err = 0
	var ipadd = $Panel/text_enterip.text
	var http = HTTPClient.new()
	err = http.connect_to_host(ipadd, 20010)
	assert(err == OK)
	# loop 10 times to try connection
	for i in range(5):
		# if device is not connected and try to connect again
		if http.get_status() == HTTPClient.STATUS_CONNECTING or http.get_status() == HTTPClient.STATUS_RESOLVING:
			http.poll()
			print("trying to connect")
			if not OS.has_feature("web"):
				OS.delay_msec(1000)
			else:
				yield(Engine.get_main_loop(), "idle_frame")
			continue
		if http.get_status() == HTTPClient.STATUS_CONNECTED:
			print("Connected with success!")
			GlobalVars.deviceip = ipadd
			connected = true
			break
	if connected == false:
		print("there was an error connecting")
	pass # Replace with function body.
