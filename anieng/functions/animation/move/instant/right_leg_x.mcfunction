# @s: ani_act
# input: #value
# do: Set armorstand tile instant to #value
# return: void

# right_leg_x = right_leg_x_s = #value
scoreboard players operation @s ani_rigt_leg_x_s = #value ani_ram
scoreboard players operation @s ani_right_leg_x = #value ani_ram

# if (not exists(Pose.RightLeg)) create();
execute unless data entity @s Pose.RightLeg run data merge entity @s {Pose:{RightLeg:[1f,0f,0f]}}

# Pose.RightLeg.X = #value
execute store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get #value ani_ram

# clear
scoreboard players reset #value ani_ram