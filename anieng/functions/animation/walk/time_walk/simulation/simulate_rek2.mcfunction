# <help function>
# @s: ani_tmp marker

# rotate()
function anieng:animation/move/rotate

# while (ani_rot == ani_rot_s)
execute unless score @s ani_rot = @s ani_rot_s at @s run function anieng:animation/walk/time_walk/simulation/simulate_rek2