# @s: ani_act
# input: #value
# manipulates: Pose.RightArm.Y
# do: Set armorstand tile instant to #value
# return: void

# right_arm_y = right_arm_y_s = #value
scoreboard players operation @s ani_rigt_arm_y_s = #value ani_ram
scoreboard players operation @s ani_right_arm_y = #value ani_ram

# if (not exists(Pose.RightArm)) create();
execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[0f,1f,0f]}}

# Pose.RightArm.Y = #value
execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players get #value ani_ram

# clear()
scoreboard players reset #value ani_ram