extends CharacterBody2D
class_name Player

# var Preload
var projectilePlayer = preload("res://scene/Projectile.tscn")
@onready var NodeFireDelaytimer = $FireingDlayTime
@onready var GunPlayer = $Gun_Player
@onready var AnimateSpritePlayer = $AnimatedSprite2D


# var Player
@export var movementSpeed := 20
var firedelayTimer := 0.1
var life = 1
var death = false


func _process(delta):
	# Animate Sprite
	if position.x < 0 :
		AnimateSpritePlayer.play("Kiri")
	if position.x > 0 :
		AnimateSpritePlayer.play("Kanan")
	else:
		AnimateSpritePlayer.play("Atas")
		
	
	
	
#	 movement
#	Test(position)
	if Input.is_action_pressed("left_p1"):
		position.x -= movementSpeed 
	if Input.is_action_pressed("right_p2"):
		position.x += movementSpeed

		
#	if Input.is_action_pressed("up_p1"):
#		position.y -= movementSpeed
#	if Input.is_action_pressed("down_p2"):
#		position.y += movementSpeed
	
	Test(position)
	
	# Fire and Delay(primary)
	if Input.is_action_pressed("Primary")and NodeFireDelaytimer.is_stopped():
		NodeFireDelaytimer.start(firedelayTimer)
		animate_Projectile()
		
		
	# player exit screen	
	player_exitScreen()
	
func animate_Projectile():
	for child in GunPlayer.get_children():
		var projcetile = projectilePlayer.instantiate()
		projcetile.global_position = child.global_position
		get_tree().current_scene.add_child(projcetile)

func damage(amount: int):
	life -= amount
	if life <= 0 :
		Death()

func player_exitScreen():
	var viewrect = get_viewport_rect()
	position.x = clamp(position.x,0,viewrect.size.x)
	position.y = clamp(position.y,0,viewrect.size.y)
	
func Death():
	death = true
	queue_free()	
	
func Test(value):
	print(value)	


