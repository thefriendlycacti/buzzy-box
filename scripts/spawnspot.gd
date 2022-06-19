extends Position2D


export (PackedScene) var box



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Timer_timeout():
	var b = box.instance()
	owner.add_child(b)

