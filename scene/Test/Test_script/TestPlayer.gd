extends CharacterBody2D


var NodeProjectile = preload("res://scene/Test/test_bullet.tscn")
var movementSpeed = 10
var life = 5

func _process(delta):
	if Input.is_action_pressed("left_p1"):
		position.x -= movementSpeed
	if Input.is_action_pressed("right_p2"):
		position.x += movementSpeed
	if Input.is_action_pressed("up_p1"):
		position.y -= movementSpeed
	if Input.is_action_pressed("down"):
		position.y += movementSpeed	
		
	move_and_slide()	
	Global.player_pos = global_position
	
	if Input.is_action_pressed("Primary"):
		var Projectile = NodeProjectile.instantiate()
		Projectile.position = position
		get_tree().current_scene.add_child(Projectile)


	

func Damage(amount: int):
	life -= amount
	if life <= 0:
		Death()
		
		
		
func Death():
	queue_free()		
