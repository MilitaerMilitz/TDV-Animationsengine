execute if score @s ani_left_leg_x_s > @s ani_left_leg_x run function anieng:animation/move/left_leg_x_pos
execute if score @s ani_left_leg_x_s < @s ani_left_leg_x run function anieng:animation/move/left_leg_x_neg

execute store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s ani_left_leg_x