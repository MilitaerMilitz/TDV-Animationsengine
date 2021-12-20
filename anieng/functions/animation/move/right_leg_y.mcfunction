execute if score @s ani_rigt_leg_y_s > @s ani_right_leg_y run function anieng:animation/move/right_leg_y_pos
execute if score @s ani_rigt_leg_y_s < @s ani_right_leg_y run function anieng:animation/move/right_leg_y_neg

execute store result entity @s Pose.RightLeg[1] float 1 run scoreboard players get @s ani_right_leg_y