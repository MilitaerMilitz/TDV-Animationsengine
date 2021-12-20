execute if score @s ani_left_arm_z_s > @s ani_left_arm_z run function anieng:animation/move/left_arm_z_pos
execute if score @s ani_left_arm_z_s < @s ani_left_arm_z run function anieng:animation/move/left_arm_z_neg

execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose:{LeftArm:[0f,0f,1f]}}
execute store result entity @s Pose.LeftArm[2] float 1 run scoreboard players get @s ani_left_arm_z