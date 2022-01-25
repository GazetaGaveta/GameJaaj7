extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal playPressed;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_ButtonPlay_pressed():
	$AudioStreamPlayer.play();
	yield($AudioStreamPlayer, "finished");
	emit_signal("playPressed");
	pass # Replace with function body.
