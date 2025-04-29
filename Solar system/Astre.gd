extends MeshInstance3D

@export var rotation_speed:float = 0.1
@export var distance_orbit:float = 0
@export var speed_orbit:float = 1
var angle_orbit:float = 180

@export var center_orbit:MeshInstance3D = null

var center_x = 0
var center_z = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if (center_orbit != null):
		distance_orbit += mesh.height
		distance_orbit += center_orbit.mesh.radius
	
func orbit(delta):
	if (center_orbit != null):
		center_x = center_orbit.position.x
		center_z = center_orbit.position.z
	var x = center_x + distance_orbit * cos(deg_to_rad(angle_orbit))
	var z = center_z + distance_orbit * sin(deg_to_rad(angle_orbit))
	
	position = Vector3(x, position.y, z)
	
	angle_orbit += speed_orbit * delta

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate_y(rotation_speed * delta)
	
	if (distance_orbit > 0):
		orbit(delta)
