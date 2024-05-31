extends CSGCylinder3D
var max_health:int = 200
var health:int = max_health:
	set(value):
		health = value
		update_label_ui()
		if health <= 0:
			get_tree().reload_current_scene()
		

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_label_ui()
	pass # Replace with function body.

func take_damage(damage):
	health -= damage
	print(health)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_label_ui():
	$Label3D.text = str(health) + '/' + str(max_health)
	var Red:Color = Color.RED
	var White:Color = Color.WHITE
	var blended_color:Color = Red.lerp(White,float(health) / float(max_health))
	$Label3D.modulate = blended_color
	
