execute if score @s ani_rigt_leg_x_s > @s ani_right_leg_x run function anieng:animation/move/right_leg_x_pos
execute if score @s ani_rigt_leg_x_s < @s ani_right_leg_x run function anieng:animation/move/right_leg_x_neg

execute unless data entity @s Pose.RightLeg run data merge entity @s {Pose:{RightLeg:[1f,0f,0f]}}
execute store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s ani_right_leg_x