# @s: ani_act
# input: #value
# manipulates: Pose.RightArm.X
# do: Set armorstand tile instant to #value
# return: void

# right_arm_x = right_arm_x_s = #value
scoreboard players operation @s ani_rigt_arm_x_s = #value ani_ram
scoreboard players operation @s ani_right_arm_x = #value ani_ram

# if (not exists(Pose.RightArm)) create();
execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[1f,0f,0f]}}

# Pose.RightArm.X = #value
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get #value ani_ram

# clear()
scoreboard players reset #value ani_ram