extends ProgressBar

var money = 0

func _process(delta):
	value = Global.playerHealth
	Global.playerHealth += 0.01 * delta
	money += Global.playerAccumulation * delta 
	$"../../../../Label".text = "MONEY:" + str(round(money))
	if Global.playerHealth <= 0:
		$"../../../../Label".text = "GAME ENDED"
