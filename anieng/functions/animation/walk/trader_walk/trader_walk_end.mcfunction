# @s: ani_act
# pre: walk engine active
# do: Kill sel_trader and stops walking
# return: void

# tag mangement (walkEnd())
tag @s remove ani_trader_walk
tag @s remove ani_trader_walk_end
tag @s remove ani_walk_ntep
tag @s add ani_walk_end

# for (trader : ani_trader): selectTrader(@s UUID[0], @s UUID[1], @s UUID[2], @s UUID[3])
execute store result score #auuid0 ani_ram run data get entity @s UUID[0]
execute store result score #auuid1 ani_ram run data get entity @s UUID[1]
execute store result score #auuid2 ani_ram run data get entity @s UUID[2]
execute store result score #auuid3 ani_ram run data get entity @s UUID[3]
execute as @e[tag=ani_trader] run function anieng:animation/walk/trader_walk/select_trader

# kill(sel_trader)
execute as @e[tag=ani_sel_trader,limit=1] run function anieng:util/kill_silent