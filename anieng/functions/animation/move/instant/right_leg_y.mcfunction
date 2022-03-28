# @s: ani_act
# input: #value
# do: Set armorstand tile instant to #value
# return: void

# right_leg_y = right_leg_y_s = #value
scoreboard players operation @s ani_rigt_leg_y_s = #value ani_ram
scoreboard players operation @s ani_right_leg_y = #value ani_ram

# if (not exists(Pose.RightLeg)) create();
execute unless data entity @s Pose.RightLeg run data merge entity @s {Pose:{RightLeg:[0f,1f,0f]}}

# Pose.RightLeg.Y = #value
execute store result entity @s Pose.RightLeg[1] float 1 run scoreboard players get #value ani_ram

# clear()
scoreboard players reset #value ani_ram