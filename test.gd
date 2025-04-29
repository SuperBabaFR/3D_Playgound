extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var mdt = MeshDataTool.new() 
	var nd = get_node("map")
	var m = nd.get_mesh()
	#get surface 0 into mesh data tool
	print(mdt.get_vertex_count())
	mdt.create_from_surface(m, 0)
	for vtx in range(mdt.get_vertex_count()):
		var vert=mdt.get_vertex(vtx)
		print("global vertex: "+str(nd.global_transform.xform(vert)))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
