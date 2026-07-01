extends Node2D

var level = "  #####
###   #
#     #
###   #
# ##  #
# #   ##
#      #
#      #
########
"
var walls = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var lines = level.split("\n")
	for row in range(lines.size()):
		var line = lines[row]
		for col in range(line.length()):
			var char = line[col]
			if char == '#':
				walls.append(Vector2(col, row))
	global_script.walls = walls

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
