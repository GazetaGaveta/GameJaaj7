extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var randomNumber;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func alterarRandomNumber(intervalo):
	randomNumber = randi() % intervalo;
	pass
	
func pedirEvento():
	var eventos = $Eventos.get_children();
	if(eventos.size() != 0):
		alterarRandomNumber(eventos.size());
		eventos[randomNumber].visible = true;	
	else:
		print("Cabou os evento parceiro");
	pass

func _eventoTerminado():
	var eventos = $Eventos.get_children();
	eventos[randomNumber].queue_free();
	#eventos[randomNumber].visible = false;
	#$Timer.start();
	pass # Replace with function body.


func _on_Timer_timeout():
	pedirEvento();
	pass # Replace with function body.
