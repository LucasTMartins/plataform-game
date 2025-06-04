extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		XRServer.primary_interface = xr_interface
		xr_interface.set_vr_mode(true)
		print("VR iniciado com OpenXR")
	else:
		print("Erro: OpenXR não encontrado ou não inicializado")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
