execute if score @s ani_rigt_leg_z_s > @s ani_right_leg_z run function anieng:animation/move/right_leg_z_pos
execute if score @s ani_rigt_leg_z_s < @s ani_right_leg_z run function anieng:animation/move/right_leg_z_neg

execute store result entity @s Pose.RightLeg[2] float 1 run scoreboard players get @s ani_right_leg_z