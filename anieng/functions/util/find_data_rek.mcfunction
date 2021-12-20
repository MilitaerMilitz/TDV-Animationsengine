# Put first Armorstand UUID in #auuid0-3 ani_ram
# Call funtion as all markers
# After this function right Marker will have tag ani_sel_data
tag @s add ani_sel_data

execute store result score #tuuid0 ani_ram run data get entity @s data.Owner[0]
execute store result score #tuuid01 ani_ram run data get entity @s data.Owner[1]
execute store result score #tuuid02 ani_ram run data get entity @s data.Owner[2]
execute store result score #tuuid03 ani_ram run data get entity @s data.Owner[3]

execute unless score #tuuid0 ani_ram = #auuid0 ani_ram run tag @s remove ani_sel_data
execute unless score #tuuid01 ani_ram = #auuid1 ani_ram run tag @s remove ani_sel_data
execute unless score #tuuid02 ani_ram = #auuid2 ani_ram run tag @s remove ani_sel_data
execute unless score #tuuid03 ani_ram = #auuid3 ani_ram run tag @s remove ani_sel_data

# Clear Ram
scoreboard players reset #tuuid0 ani_ram
scoreboard players reset #tuuid01 ani_ram
scoreboard players reset #tuuid02 ani_ram
scoreboard players reset #tuuid03 ani_ram
