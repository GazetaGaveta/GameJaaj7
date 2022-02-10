extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var soma = 5;
# Called when the node enters the scene tree for the first time.
func _ready():
	self.position.y = position.y + soma;
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_Timer_timeout():
	soma = soma * -1;
	self.position.y = self.position.y + soma;
	pass # Replace with function body.
