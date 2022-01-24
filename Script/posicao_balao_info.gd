extends Node

var qualidade_alta = preload("res://Imagens/icon.png")
var qualidade_medio = preload("res://Imagens/icon.png")
var qualidade_baixo = preload("res://Imagens/icon.png")
var mail_sprite 

func _ready():
	mail_sprite = get_node("Sprite")
	change_mail_by_percent(100)
	pass 
	

func change_mail_by_percent(percent):
	if percent > 80:
		mail_sprite.set_texture(qualidade_alta)
	elif percent > 50:
		mail_sprite.set_texture(qualidade_medio)
	else:
		mail_sprite.set_texture(qualidade_baixo)
