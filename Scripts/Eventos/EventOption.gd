extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(String, MULTILINE) var texto;
var label;

# Called when the node enters the scene tree for the first time.
func _ready():
	label = $Texto;
	label.text = texto;

func set_texto_option(texto):
	label.text = texto;

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_EventOption_pressed():
	$AudioStreamPlayer.play();
	yield($AudioStreamPlayer, "finished");
	pass # Replace with function body.
