extends MultiplayerSpawner

@export var network_player: PackedScene
@export var spawn_position: Marker2D

func _ready() -> void:
	multiplayer.peer_connected.connect(spawn_player)

func spawn_player(id: int) -> void:
	if !multiplayer.is_server(): return 
	
	var player: Node = network_player.instantiate()
	player.name = str(id)
	player.global_position = spawn_position.global_position
	
	get_node(spawn_path).call_deferred("add_child", player)