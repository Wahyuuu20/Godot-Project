extends Area2D
class_name MeteorObj

var life := 10



	
func damage(amount: int):
	life -= amount
	if life <= 0:
		Death()
		

func Death():
	queue_free()	


