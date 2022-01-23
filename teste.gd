extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal trocarAnimacao(nome);

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		emit_signal("trocarAnimacao", "Andando");
	elif Input.is_action_pressed("ui_down"):
		emit_signal("trocarAnimacao", "Parado");
		
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
