# Put first Armor Stand UUID in #auuid0-3 ani_ram
# After this function right Armorstand will have tag ani_sel_head

tag @s add ani_sel_head

execute store result score #tuuid0 ani_ram run data get entity @s UUID[0]
execute store result score #tuuid1 ani_ram run data get entity @s UUID[1]
execute store result score #tuuid2 ani_ram run data get entity @s UUID[2]
execute store result score #tuuid3 ani_ram run data get entity @s UUID[3]

execute unless score #tuuid0 ani_ram = #auuid0 ani_ram run tag @s remove ani_sel_head
execute unless score #tuuid1 ani_ram = #auuid1 ani_ram run tag @s remove ani_sel_head
execute unless score #tuuid2 ani_ram = #auuid2 ani_ram run tag @s remove ani_sel_head
execute unless score #tuuid3 ani_ram = #auuid3 ani_ram run tag @s remove ani_sel_head

# clear() Ram
scoreboard players reset #tuuid0 ani_ram
scoreboard players reset #tuuid1 ani_ram
scoreboard players reset #tuuid2 ani_ram
scoreboard players reset #tuuid3 ani_ram