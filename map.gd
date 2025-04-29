extends MeshInstance3D

var mdt

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mdt = MeshDataTool.new()
	mdt.create_from_surface(mesh, 0)
	print(mdt.get_vertex_count())
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
