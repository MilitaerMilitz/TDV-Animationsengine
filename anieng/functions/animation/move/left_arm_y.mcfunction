execute if score @s ani_left_arm_y_s > @s ani_left_arm_y run function anieng:animation/move/left_arm_y_pos
execute if score @s ani_left_arm_y_s < @s ani_left_arm_y run function anieng:animation/move/left_arm_y_neg

execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose:{LeftArm:[0f,1f,0f]}}
execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get @s ani_left_arm_y