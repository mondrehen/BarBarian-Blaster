extends Node3D
@onready var enemy_scene:PackedScene = preload("res://Enemy/enemy_1.tscn")
var spawn_init_pos:Vector3 = Vector3(-24,0,2)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$WaitTimer.start()

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_wait_timer_timeout() -> void:
	$SpawnTimer.start()
	pass # Replace with function body.

func _on_spawn_timer_timeout() -> void:
	var Enemy = enemy_scene.instantiate()
	Enemy.position = spawn_init_pos
	$Path3D.call_deferred("add_child",Enemy)
	pass # Replace with function body.



