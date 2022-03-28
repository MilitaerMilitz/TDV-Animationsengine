# @s: ani_act
# input: #value
# manipulates: Pose.Body.Z
# do: Set armorstand tile instant to #value
# return: void

# body_z = body_z_s = #value
scoreboard players operation @s ani_body_z_s = #value ani_ram
scoreboard players operation @s ani_body_z = #value ani_ram

# if (not exists(Pose.Body)) create();
execute unless data entity @s Pose.Body run data merge entity @s {Pose:{Body:[0f,0f,1f]}}

# Pose.Body.Z = #value
execute store result entity @s Pose.Body[2] float 1 run scoreboard players get #value ani_ram

# clear()
scoreboard players reset #value ani_ram