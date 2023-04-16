extends CanvasLayer

signal start_game



func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()
	$MessageTimer.start()


func show_game_over():
	show_message("Game Over")
	yield($MessageTimer, "timeout")
	$MessageLabel.text = "Hello,\nEarther!"
	$MessageLabel.show()
	yield(get_tree().create_timer(1), "timeout")
	$StartButton.show()
	$AboutButton.show()
	$HighScoreLabel.show()
	$HighScoreLabel2.show()


func update_score(score, high_score):
	$ScoreLabel.text = str(score)
	$HighScoreLabel.text = str(high_score)


func _on_StartButton_pressed():
	$StartButton.hide()
	$AboutButton.hide()
	$HighScoreLabel.hide()
	$HighScoreLabel2.hide()
	emit_signal("start_game")

func _on_AboutButton_pressed():
	$Sprite.modulate = Color(1, 1, 1, 1)
	$AboutButton.hide()
	$StartButton.hide()
	$HighScoreLabel.hide()
	$HighScoreLabel2.hide()
	
	

func _on_MessageTimer_timeout():
	$MessageLabel.hide()
