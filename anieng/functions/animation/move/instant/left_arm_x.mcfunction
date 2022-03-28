# @s: ani_act
# input: #value
# manipulates: Pose.LeftArm.X
# do: Set armorstand tile instant to #value
# return: void

# left_arm_x = left_arm_x_s = #value
scoreboard players operation @s ani_left_arm_x_s = #value ani_ram
scoreboard players operation @s ani_left_arm_x = #value ani_ram

# if (not exists(Pose.LeftArm)) create();
execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose:{LeftArm:[1f,0f,0f]}}

# Pose.LeftArm.X = #value
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get #value ani_ram

# clear()
scoreboard players reset #value ani_ram