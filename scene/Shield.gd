extends Area2D

var life_sheild = 10

func Damage_Sheild(amount: int):
	life_sheild -= amount
	if life_sheild <= 0:
		Death()	
			
func Death():
	queue_free()
