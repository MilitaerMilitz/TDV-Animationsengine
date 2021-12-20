execute if score @s ani_rigt_arm_x_s > @s ani_right_arm_x run function anieng:animation/move/right_arm_x_pos
execute if score @s ani_rigt_arm_x_s < @s ani_right_arm_x run function anieng:animation/move/right_arm_x_neg

execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[1f,0f,0f]}}
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ani_right_arm_x