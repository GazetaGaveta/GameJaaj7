extends Popup


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal resultadoFoiLido;
export(String, MULTILINE) var texto;
var label;

# Called when the node enters the scene tree for the first time.
func _ready():
	label = $CaixaDeResultado/TextoEvento;
	label.text = texto;
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_EventOption_pressed():
	emit_signal("resultadoFoiLido");
	pass # Replace with function body.
