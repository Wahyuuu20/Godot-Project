extends Node2D

var direction :Vector2 = Vector2.RIGHT
var speedProjetile : float = 50

func _process(delta):
	position += direction * speedProjetile 
	
	
	


func _on_area_2d_area_entered(area):
	if area.is_in_group("test2"):
		area.Damage(1)
	
