execute if score @s ani_left_leg_y_s > @s ani_left_leg_y run function anieng:animation/move/left_leg_y_pos
execute if score @s ani_left_leg_y_s < @s ani_left_leg_y run function anieng:animation/move/left_leg_y_neg

execute store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get @s ani_left_leg_y