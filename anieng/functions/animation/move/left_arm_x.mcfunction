execute if score @s ani_left_arm_x_s > @s ani_left_arm_x run function anieng:animation/move/left_arm_x_pos
execute if score @s ani_left_arm_x_s < @s ani_left_arm_x run function anieng:animation/move/left_arm_x_neg

execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose:{LeftArm:[1f,0f,0f]}}
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ani_left_arm_x