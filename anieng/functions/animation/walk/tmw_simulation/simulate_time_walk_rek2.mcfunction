# <help function>
# @s: ani_tmp marker

# rotate()
function anieng:animation/move/rotate

# while (ani_rot == ani_rot_s)
execute unless score @s ani_rot = @s ani_rot_s at @s run function anieng:animation/walk/tmw_simulation/simulate_time_walk_rek2