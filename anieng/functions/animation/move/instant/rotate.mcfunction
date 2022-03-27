# @s: ani_act
# input: #value
# do: Set armorstand tile instant to #value
# return: void

# rot = rot_s = #value
scoreboard players operation @s ani_rot_s = #value ani_ram
scoreboard players operation @s ani_rot = #value ani_ram

# Rotation = #value
execute store result entity @s Rotation[0] float 1 run scoreboard players get #value ani_ram

# clear
scoreboard players reset #value ani_ram