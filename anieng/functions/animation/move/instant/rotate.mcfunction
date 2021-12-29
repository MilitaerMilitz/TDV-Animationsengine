# call as animation Armorstand
# use #value to input value
# set armorstand tile instant to specific value

scoreboard players operation @s ani_rot_s = #value ani_ram
scoreboard players operation @s ani_rot = #value ani_ram

execute store result entity @s Rotation[0] float 1 run scoreboard players get #value ani_ram

# clear
scoreboard players reset #value ani_ram