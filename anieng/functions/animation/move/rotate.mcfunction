execute if score @s ani_rot_s > @s ani_rot run function anieng:animation/move/rotate_pos
execute if score @s ani_rot_s < @s ani_rot run function anieng:animation/move/rotate_neg

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ani_rot