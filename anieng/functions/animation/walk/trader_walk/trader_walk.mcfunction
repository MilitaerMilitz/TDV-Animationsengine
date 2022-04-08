# @s: ani_act
# pre: walk engine active
# manipulates: @s Pos, @s Rotation 
# do: Perform trader walk by let trader walk and wait if it reached target and fires trader_walk_end
# return: void

# for (trader : ani_trader): selectTrader(@s UUID[0], @s UUID[1], @s UUID[2], @s UUID[3])
execute store result score #auuid0 ani_ram run data get entity @s UUID[0]
execute store result score #auuid1 ani_ram run data get entity @s UUID[1]
execute store result score #auuid2 ani_ram run data get entity @s UUID[2]
execute store result score #auuid3 ani_ram run data get entity @s UUID[3]
execute as @e[tag=ani_trader] run function anieng:animation/walk/trader_walk/select_trader

# clear()
scoreboard players reset #auuid0 ani_ram
scoreboard players reset #auuid1 ani_ram
scoreboard players reset #auuid2 ani_ram
scoreboard players reset #auuid3 ani_ram

# if (targetReached() || not sel_trader.exists()) traderWalkEnd()
execute as @e[tag=ani_sel_trader,limit=1] unless data entity @s WanderTarget run tag @e[tag=ani_trader_walk,limit=1] add ani_trader_walk_end
execute unless entity @e[tag=ani_sel_trader] run tag @s add ani_trader_walk_end

# @s Pos = sel_trader Pos
# @s Rotation.X = sel_trader Rotation.X
teleport @s @e[tag=ani_sel_trader,limit=1]
data modify entity @s Rotation[0] set from entity @e[tag=ani_sel_trader,limit=1] Rotation[0]

# setMovementSpeed(walk_speed)
execute if score @s ani_walk_speed matches 1 run attribute @e[tag=ani_sel_trader,limit=1] generic.movement_speed base set 0.25
execute if score @s ani_walk_speed matches 2 run attribute @e[tag=ani_sel_trader,limit=1] generic.movement_speed base set 0.35
execute if score @s ani_walk_speed matches 3 run attribute @e[tag=ani_sel_trader,limit=1] generic.movement_speed base set 0.45
execute if score @s ani_walk_speed matches 4 run attribute @e[tag=ani_sel_trader,limit=1] generic.movement_speed base set 0.5
execute if score @s ani_walk_speed matches 5 run attribute @e[tag=ani_sel_trader,limit=1] generic.movement_speed base set 0.55
execute if score @s ani_walk_speed matches 6 run attribute @e[tag=ani_sel_trader,limit=1] generic.movement_speed base set 0.7

# clear()
tag @e[tag=ani_sel_trader] remove ani_sel_trader