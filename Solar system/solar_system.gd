extends Node3D

@export var zoom_speed = 1
@onready var camera:Camera3D = $Camera3D

var focus_position:Vector3
var distance:float
var angle:float
var move:float
var move_speed:float = 5

func _input(event):
	move = 0
	
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP and event.pressed:
			camera.fov = (camera.fov - zoom_speed) if (camera.fov + zoom_speed > 1) else camera.fov
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN and event.pressed:
			camera.fov = (camera.fov + zoom_speed) if (camera.fov + zoom_speed < 180) else camera.fov
			
	if event is InputEventAction:
		if event.is_action_pressed("left"):
			move -= move_speed



func _ready() -> void:
	focus_position = Vector3.ZERO
	distance = 300
	angle = 0
	pass # Replace with function body.

func _process(delta: float) -> void:
	if move != 0:
		angle += move * delta
		var x = focus_position.x + distance * cos(deg_to_rad(angle))
		var z = focus_position.z + distance * sin(deg_to_rad(angle))
		print("angle : ", angle, " position : ", Vector3(x, position.y, z))
		#position = Vector3(x, position.y, z)
