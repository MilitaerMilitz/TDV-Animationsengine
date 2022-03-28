# @s: ani_act
# input: #value
# manipulates: Pose.RightLeg.Z
# do: Set armorstand tile instant to #value
# return: void

# right_leg_z = right_leg_z_s = #value
scoreboard players operation @s ani_rigt_leg_z_s = #value ani_ram
scoreboard players operation @s ani_right_leg_z = #value ani_ram

# if (not exists(Pose.RightLeg)) create();
execute unless data entity @s Pose.RightLeg run data merge entity @s {Pose:{RightLeg:[0f,0f,1f]}}

# Pose.RightLeg.Z = #value
execute store result entity @s Pose.RightLeg[2] float 1 run scoreboard players get #value ani_ram

# clear()
scoreboard players reset #value ani_ram