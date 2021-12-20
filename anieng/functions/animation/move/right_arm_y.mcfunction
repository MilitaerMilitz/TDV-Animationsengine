execute if score @s ani_rigt_arm_y_s > @s ani_right_arm_y run function anieng:animation/move/right_arm_y_pos
execute if score @s ani_rigt_arm_y_s < @s ani_right_arm_y run function anieng:animation/move/right_arm_y_neg

execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[0f,1f,0f]}}
execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @s ani_right_arm_y