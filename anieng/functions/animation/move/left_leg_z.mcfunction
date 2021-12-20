execute if score @s ani_left_leg_z_s > @s ani_left_leg_z run function anieng:animation/move/left_leg_z_pos
execute if score @s ani_left_leg_z_s < @s ani_left_leg_z run function anieng:animation/move/left_leg_z_neg

execute store result entity @s Pose.LeftLeg[2] float 1 run scoreboard players get @s ani_left_leg_z