tag @s remove ani_align_walk_end
tag @s remove ani_align_walk
tag @s add ani_walk_end

execute positioned ~ ~0.1 ~ run function anieng:util/center_y

# reset rotation
function anieng:util/modulo_360_rot
data modify entity @s Rotation[1] set value 0