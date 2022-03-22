tag @s remove ani_trader_walk
tag @s remove ani_trader_walk_end
tag @s remove ani_walk_ntep
tag @s add ani_walk_end

execute store result score #auuid0 ani_ram run data get entity @s UUID[0]
execute store result score #auuid1 ani_ram run data get entity @s UUID[1]
execute store result score #auuid2 ani_ram run data get entity @s UUID[2]
execute store result score #auuid3 ani_ram run data get entity @s UUID[3]

execute as @e[type=wandering_trader,tag=ani_trader] run function anieng:animation/walk/trader_walk/select_trader

execute as @e[type=wandering_trader,tag=ani_pos_trader,sort=nearest,limit=1] run function anieng:util/kill_silent