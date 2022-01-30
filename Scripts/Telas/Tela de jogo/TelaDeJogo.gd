extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var distRato = 0;
var cartaRato = 0;
var distPombo = 0;

const DISTANCIA_ADICIONAL = 100;


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_EventController_resultadoEvento(modificadores):
	print(modificadores)
	$TimerDistancia.start();
	$TimerEvento.start();
	pass # Replace with function body.


func _on_TimerDistancia_timeout():
	distRato = distRato + DISTANCIA_ADICIONAL;
	distPombo = distPombo + DISTANCIA_ADICIONAL;
	$Label.text = "distancia rato: %d" % distRato;
	pass # Replace with function body.


func _on_TimerEvento_timeout():
	$EventController.pedirEvento();
	pass # Replace with function body.
