extends Area2D

@onready var Nodetimer =$Timer
@onready var NodeRayCast =$Cast/RayCast2D
var plBulletenemy = preload("res://scene/projectile_enemy.tscn")

var speed = 25
var player_chase = false
var player = null
func _ready():
	pass
#	player = get_parent().find_child("Player")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#aim()
	Player_Chase()


func aim():
	NodeRayCast.target_position = Player.position
	
func Player_Chase():
	if player_chase:
		position += (Player.position - position)
		
func detect():
	pass


func _on_detect_body_entered(body):
	player = body
	player_chase = true
	
