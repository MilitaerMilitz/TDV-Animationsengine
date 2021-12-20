# Put first Armor Stand UUID in #auuid0-3 ani_ram
# Call funtion as all ani_act
# After this function right Armorstand will have tag ani_edit_as

tag @s add ani_sel_as

execute store result score #tuuid0 ani_ram run data get entity @s UUID[0]
execute store result score #tuuid01 ani_ram run data get entity @s UUID[1]
execute store result score #tuuid02 ani_ram run data get entity @s UUID[2]
execute store result score #tuuid03 ani_ram run data get entity @s UUID[3]

execute unless score #tuuid0 ani_ram = #auuid0 ani_ram run tag @s remove ani_sel_as
execute unless score #tuuid01 ani_ram = #auuid1 ani_ram run tag @s remove ani_sel_as
execute unless score #tuuid02 ani_ram = #auuid2 ani_ram run tag @s remove ani_sel_as
execute unless score #tuuid03 ani_ram = #auuid3 ani_ram run tag @s remove ani_sel_as

# Clear Ram
scoreboard players reset #tuuid0 ani_ram
scoreboard players reset #tuuid01 ani_ram
scoreboard players reset #tuuid02 ani_ram
scoreboard players reset #tuuid03 ani_ram