execute if score @s ani_left_leg_x_s > @s ani_left_leg_x run function anieng:animation/move/left_leg_x_pos
execute if score @s ani_left_leg_x_s < @s ani_left_leg_x run function anieng:animation/move/left_leg_x_neg

execute unless data entity @s Pose.LeftLeg run data merge entity @s {Pose:{LeftLeg:[1f,0f,0f]}}
execute store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s ani_left_leg_x