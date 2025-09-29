extends AnimatedSprite2D

@onready var CubicleArea = $Area2D
var changedValuesAlready = false
var inArea: bool
var tempArea
var cubicleNotUsed = true
@onready var inCubicleSfx = $AudioStreamPlayer

func _process(delta):
	pass
	
func _on_area_2d_area_entered(area: Area2D) -> void:
	tempArea = area.get_parent()
	if cubicleNotUsed:
		Global.playerAccumulation += 0.05
		Global.playerHealth -= 10
		tempArea.canMoveWorker = false
		cubicleNotUsed = false
		inCubicleSfx.play()


func _on_area_2d_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	pass
