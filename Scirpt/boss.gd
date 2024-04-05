extends Node2D


@export var timerDelay = 0.5
var life = 20
var firingshot = true
var Player = false
var Boss_Chase = false
var Speed_bos = 120
var life_sheild = 10

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
#	BossChase()
#	BossGun()

func Damage(amount: int):
	life -= amount
	if life <= 0:
		Death()	
		

func Death():
	queue_free()

func BossChase():
	if Boss_Chase:
		position.x += (Player.position.x - position.x) / Speed_bos




#func BossGun():
	#if firingshot == true and NodeTimerDelayFire.is_stopped():
		#NodeTimerDelayFire.start(timerDelay)
		#for child in MainNodeProjectileStart.get_children():
		#	var ProjectileBoss = NodeprojectileBoss.instantiate()
		#	ProjectileBoss.global_position = child.global_position
		#	get_tree().current_scene.add_child(ProjectileBoss)
						




func Player_exited(body):
	Player = false
	Boss_Chase = false

func PlayerEnter(body):
	Player = body
	Boss_Chase = true
