extends CollisionShape3D

@export var sea:MeshInstance3D
var sea_mesh:PlaneMesh

func refresh_mesh():
	sea_mesh = sea.mesh
	var surface_tool = SurfaceTool.new()
	surface_tool.create_from(sea_mesh, 0)
	var data = surface_tool.commit_to_arrays()
	
	print(data[ArrayMesh.ARRAY_VERTEX][0])
	
	var array_mesh = ArrayMesh.new()
	array_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, data)
	shape = array_mesh.create_trimesh_shape()
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	refresh_mesh()
