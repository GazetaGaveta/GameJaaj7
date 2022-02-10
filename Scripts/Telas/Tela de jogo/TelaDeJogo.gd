extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal gameOver(distanciaRato, distanciaPombo, estragoCarta);

var distRato = 0;
var cartaRato = 0 setget addEstrago;
var distPombo = 0;

const DISTANCIA_ADICIONAL = 100;
const ESTRAGO_ADICIONAL = 1;


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func addEstrago(estrago):
	cartaRato = cartaRato + estrago;
	if cartaRato >= 100:
		cartaRato = 100;
	elif cartaRato <= 0:
		cartaRato = 0;
	$Label3.text = "Estrago carta: %d%%" % cartaRato;
	pass

func _on_EventController_resultadoEvento(modificadores):
	distRato = distRato + DISTANCIA_ADICIONAL + modificadores.distancia;
	distPombo = distPombo + DISTANCIA_ADICIONAL + modificadores.distanciaPombo;
	addEstrago(modificadores.estrago);
	$Label.text = "distancia Rato: %d" % distRato;
	$Label2.text = "distancia Pombo: %d" % distPombo;
	$TimerDistancia.start();
	$TimerEvento.start();
	if(cartaRato >= 100):
		yield($TimerDistancia, "timeout");
		emit_signal("gameOver", distRato, distPombo, cartaRato);
	pass # Replace with function body.


func _on_TimerDistancia_timeout():
	if(cartaRato < 100):
		distRato = distRato + DISTANCIA_ADICIONAL;
		distPombo = distPombo + DISTANCIA_ADICIONAL;
		addEstrago(ESTRAGO_ADICIONAL);
		$Label.text = "distancia Rato: %d" % distRato;
		$Label2.text = "distancia Pombo: %d" % distPombo;
	pass # Replace with function body.


func _on_TimerEvento_timeout():
	var eventoEnviado = $EventController.pedirEvento();
	if(eventoEnviado == false):
		emit_signal("gameOver", distRato, distPombo, cartaRato);
	pass # Replace with function body.
