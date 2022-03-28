# @s: ani_act
# input: #value
# do: Set armorstand tile instant to #value
# return: void

# right_arm_z = right_arm_z_s = #value
scoreboard players operation @s ani_rigt_arm_z_s = #value ani_ram
scoreboard players operation @s ani_right_arm_z = #value ani_ram

# if (not exists(Pose.RightArm)) create();
execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[0f,0f,1f]}}

# Pose.RightArm.Z = #value
execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get #value ani_ram

# clear()
scoreboard players reset #value ani_ram