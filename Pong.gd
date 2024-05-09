extends Node2D
const CENTER=Vector2(576,324)
var computer_score=0
var player_score=0
var cont=0


	
func _on_goal_left_body_entered(body):
	
	computer_score += 1
	$ComputerScore.text = str(computer_score)	
	cont+=1
	reset()
	
func _on_goal_right_body_entered(body):
	player_score += 1
	$PlayerScore.text = str(player_score)
	cont+=1
	reset()
	
func reset():	
	print("Con=",cont)	
	$Ball.position = CENTER
	$Ball.call("set_ball_velocity")
	$Player.position.y = CENTER.y
	$Computer.position.y = CENTER.y
