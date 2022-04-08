# @s: ani_trader -> call as @e[tag=ani_trader]
# input: #auuid0 ani_ram, #auuid1 ani_ram, #auuid2 ani_ram, #auuid3 ani_ram
# do: Unselect @s trader by checking if trader has the right Item with wanted UUID (which is given in #auuid0-3 ani_ram)
# return: @s=ani_pos_trader is valid trader

# selectTrader()
tag @s add ani_pos_trader

# wantedUUID = ...
execute store result score #tuuid0 ani_ram run data get entity @s HandItems[1].tag.UUID[0]
execute store result score #tuuid01 ani_ram run data get entity @s HandItems[1].tag.UUID[1]
execute store result score #tuuid02 ani_ram run data get entity @s HandItems[1].tag.UUID[2]
execute store result score #tuuid03 ani_ram run data get entity @s HandItems[1].tag.UUID[3]

# if (trader.UUID != wantedUUID) unselectTrader()
execute unless score #tuuid0 ani_ram = #auuid0 ani_ram run tag @s remove ani_pos_trader
execute unless score #tuuid01 ani_ram = #auuid1 ani_ram run tag @s remove ani_pos_trader
execute unless score #tuuid02 ani_ram = #auuid2 ani_ram run tag @s remove ani_pos_trader
execute unless score #tuuid03 ani_ram = #auuid3 ani_ram run tag @s remove ani_pos_trader

# clear()
scoreboard players reset #tuuid0 ani_ram
scoreboard players reset #tuuid01 ani_ram
scoreboard players reset #tuuid02 ani_ram
scoreboard players reset #tuuid03 ani_ram
