# @s: ani_act
# input: #value
# do: Set armorstand tile instant to #value
# return: void

# head_z = head_z_s = #value
scoreboard players operation @s ani_head_z_s = #value ani_ram
scoreboard players operation @s ani_head_z = #value ani_ram

# if (not exists(Pose.Head)) create();
execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0f,0f,1f]}}

# Pose.Head.Z = #value
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get #value ani_ram

# clear
scoreboard players reset #value ani_ram