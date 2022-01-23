extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const optionDictionary = {"Estrago": 0, "Distancia": 0, "DistanciaPombo":0};
export(Array, Dictionary) var Modificadores = [
	optionDictionary,
	optionDictionary,
	optionDictionary
	];

signal chosenOption(option, modificadores)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_EventOption_pressed(extra_arg_0):
	print(extra_arg_0);
	emit_signal("chosenOption", extra_arg_0, Modificadores[extra_arg_0]);
	pass # Replace with function body.
