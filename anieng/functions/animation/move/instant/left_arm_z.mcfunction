# @s: ani_act
# input: #value
# manipulates: Pose.LeftArm.Z
# do: Set armorstand tile instant to #value
# return: void

# left_arm_z = left_arm_z_s = #value
scoreboard players operation @s ani_left_arm_z_s = #value ani_ram
scoreboard players operation @s ani_left_arm_z = #value ani_ram

# if (not exists(Pose.LeftArm)) create();
execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose:{LeftArm:[0f,0f,1f]}}

# Pose.LeftArm.Z = #value
execute store result entity @s Pose.LeftArm[2] float 1 run scoreboard players get #value ani_ram

# clear()
scoreboard players reset #value ani_ram