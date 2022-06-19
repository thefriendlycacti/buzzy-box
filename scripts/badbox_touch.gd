extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	position += transform.x * -GlobalVars.boxspeed * delta


func _on_bad_box_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene("res://theend.tscn")
	else:
		pass # Replace with function body.