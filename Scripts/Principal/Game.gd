extends Control

export(PackedScene) var menu;
export(PackedScene) var jogo;
export(PackedScene) var gameOver;
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	menuInstance();
	pass # Replace with function body.

func _playPressed():
	$inicio.queue_free();
	jogoInstace();
	pass

func _gameOver(dist, dist2, carta):
	$jogo.queue_free();
	gameOverInstance(dist, dist2, carta);
	pass
	
func _voltarInicio():
	$gameOver.queue_free();
	menuInstance();
	pass
	
func menuInstance():
	var inicio = menu.instance();
	inicio.name = "inicio"; 
	add_child(inicio);
	inicio.connect("playPressed", self, "_playPressed");
	pass
	
func jogoInstace():
	var telaJogo = jogo.instance();
	telaJogo.name = "jogo"; 
	add_child(telaJogo);
	telaJogo.connect("gameOver", self, "_gameOver");
	pass
	
func gameOverInstance(dist, dist2, carta):
	var telaGameOver = gameOver.instance();
	var textoVencedor;
	var textoGameOver; 
	
	if(carta == 100):
		textoVencedor = "Pombo é o vencedor! A carta do rato foi destruída!";
	elif(dist > dist2):
		textoVencedor = "Rato é o vencedor! Chegou primeiro!";
	elif(dist < dist2):
		textoVencedor = "Pombo é o vencedor! Chegou primeiro!";
	else:
		textoVencedor = "Foi um empate técnico! Ambos chegaram ao mesmo tempo!";
	
	textoGameOver = """Distância percorrida pelo rato: %d
	Distância percorrida pelo Pombo: %d
	Estrago da carta do rato: %d%%
	%s""" % [dist, dist2, carta, textoVencedor];
	
	telaGameOver.name = "gameOver";
	telaGameOver.text = textoGameOver;
	add_child(telaGameOver);
	telaGameOver.connect("voltarInicio", self, "_voltarInicio");
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
