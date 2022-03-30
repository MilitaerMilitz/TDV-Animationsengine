# @s: ani_act
# manipulates: @s Rotation
# do: Let align walk end
# return: void

# tag -= [...] += [...]
tag @s remove ani_align_walk_end
tag @s remove ani_align_walk
tag @s add ani_walk_end

# Pos.Y = floor(Pos.Y) + 0.6
execute positioned ~ ~0.1 ~ run function anieng:util/center_y

# Rotation.X = rot %= 360; rot_s %= 360;
function anieng:util/modulo_360_rot

# Rotation.Y = 0
data modify entity @s Rotation[1] set value 0