extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal voltarInicio;

export(String, MULTILINE) var text;

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = text;
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_EventOption_pressed():
	emit_signal("voltarInicio");
	pass # Replace with function body.
