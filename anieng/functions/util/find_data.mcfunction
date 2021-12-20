# Finds data marker from Armorstand
# Call funtiocn as animation Armorstand
# After this function right data marker will have tag ani_sel_data
# Clears Ram automatically

execute store result score #auuid0 ani_ram run data get entity @s UUID[0]
execute store result score #auuid1 ani_ram run data get entity @s UUID[1]
execute store result score #auuid2 ani_ram run data get entity @s UUID[2]
execute store result score #auuid3 ani_ram run data get entity @s UUID[3]

execute as @e[tag=ani_data,type=marker,distance=..2] run function anieng:util/find_data_rek

# Clear Ram
scoreboard players reset #auuid0 ani_ram
scoreboard players reset #auuid1 ani_ram
scoreboard players reset #auuid2 ani_ram
scoreboard players reset #auuid3 ani_ram