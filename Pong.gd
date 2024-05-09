extends Node2D
const CENTER=Vector2(576,324)
func _on_goal_left_body_entered(body):
	$Ball.position = CENTER
	$Player.position.y = CENTER.y
	$Computer.position.y = CENTER.y



func _on_goal_right_body_entered(body):
	$Ball.position = CENTER
	$Player.position.y = CENTER.y
	$Computer.position.y = CENTER.y
