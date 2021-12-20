execute if score @s ani_rigt_arm_z_s > @s ani_right_arm_z run function anieng:animation/move/right_arm_z_pos
execute if score @s ani_rigt_arm_z_s < @s ani_right_arm_z run function anieng:animation/move/right_arm_z_neg

execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[0f,0f,1f]}}
execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get @s ani_right_arm_z