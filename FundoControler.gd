extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export(PackedScene) var fundo;
export(int, -1, 1, 2) var direcao;

# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(fundo.instance());
	var f = fundo.instance();
	f.rect_position.x = 1024;
	f.name = "Fundo2";
	add_child(f);
	pass # Replace with function body.

func _process(delta):
	$Fundo1.rect_position.x += direcao;
	$Fundo2.rect_position.x += direcao;
	print(abs($Fundo1.rect_position.x));
	if abs($Fundo1.rect_position.x) >= 1024:
		$Fundo1.rect_position.x = -1*$Fundo1.rect_position.x;
	elif abs($Fundo2.rect_position.x) >= 1024:
		$Fundo2.rect_position.x = -1*$Fundo1.rect_position.x;
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
