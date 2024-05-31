extends PathFollow3D
var speed:float = 0.2
@onready var base = get_tree().get_first_node_in_group("Base")
var ATT:int = 12

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress_ratio += delta * speed
	if progress_ratio == 1.0:
		base.take_damage(ATT)
		queue_free()
	pass


