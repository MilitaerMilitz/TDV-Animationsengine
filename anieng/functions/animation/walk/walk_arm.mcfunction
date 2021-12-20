# bind arms to legs
scoreboard players operation @s ani_left_arm_x_s = @s ani_left_leg_x
scoreboard players operation @s ani_left_arm_x = @s ani_left_leg_x

scoreboard players operation @s ani_rigt_arm_x_s = @s ani_right_leg_x
scoreboard players operation @s ani_right_arm_x = @s ani_right_leg_x

execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ani_left_arm_x
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ani_right_arm_x