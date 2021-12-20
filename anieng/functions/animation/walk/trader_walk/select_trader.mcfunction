# Put first Armor Stand UUID in #auuid0-3 ani_ram
# Call funtion as all ani_trader
# After this function the trader with right Armor Stand UUID (stored in its data) have tag ani_pos_trader

tag @s add ani_pos_trader

execute store result score #tuuid0 ani_ram run data get entity @s HandItems[1].tag.UUID[0]
execute store result score #tuuid01 ani_ram run data get entity @s HandItems[1].tag.UUID[1]
execute store result score #tuuid02 ani_ram run data get entity @s HandItems[1].tag.UUID[2]
execute store result score #tuuid03 ani_ram run data get entity @s HandItems[1].tag.UUID[3]

execute unless score #tuuid0 ani_ram = #auuid0 ani_ram run tag @s remove ani_pos_trader
execute unless score #tuuid01 ani_ram = #auuid1 ani_ram run tag @s remove ani_pos_trader
execute unless score #tuuid02 ani_ram = #auuid2 ani_ram run tag @s remove ani_pos_trader
execute unless score #tuuid03 ani_ram = #auuid3 ani_ram run tag @s remove ani_pos_trader

# Clear Ram
scoreboard players reset #tuuid0 ani_ram
scoreboard players reset #tuuid01 ani_ram
scoreboard players reset #tuuid02 ani_ram
scoreboard players reset #tuuid03 ani_ram
