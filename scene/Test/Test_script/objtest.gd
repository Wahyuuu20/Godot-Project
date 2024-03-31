extends Area2D

@onready var plbullet = preload("res://scene/Test/test_bullet.tscn")
@onready var rayCast = $RayCast2D 
var speed = 25
var player = false
var player_look = false
var player_chase = false
var rotasi = 100
var shoot = false

func _process(delta):	
	#Player_Chase()
	Shoot()
	look_player()

	
	

func Player_Chase():
	if player_chase:
		position += (player.position - position)/speed
	
	
func look_player():
	rayCast.target_position = to_local(Global.player_pos)	
	
	
func Shoot():
	if shoot:
		var bullet = plbullet.instantiate()
		bullet.position = position
		bullet.direction = (rayCast.target_position).normalized()
		get_tree().current_scene.add_child(bullet)
		
	
func _on_detection_area_body_entered(body):
	player = body
	player_chase = true
	player_look = true
	shoot = true



func _on_detection_area_body_exited(body):
	player = null
	player_chase = false
	player_look = false
	shoot = false
	


