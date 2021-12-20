execute store result score #auuid0 ani_ram run data get entity @s UUID[0]
execute store result score #auuid1 ani_ram run data get entity @s UUID[1]
execute store result score #auuid2 ani_ram run data get entity @s UUID[2]
execute store result score #auuid3 ani_ram run data get entity @s UUID[3]

execute as @e[type=wandering_trader,tag=ani_trader] run function anieng:animation/walk/trader_walk/select_trader

# between clear
scoreboard players reset #auuid0 ani_ram
scoreboard players reset #auuid1 ani_ram
scoreboard players reset #auuid2 ani_ram
scoreboard players reset #auuid3 ani_ram

execute as @e[type=wandering_trader,tag=ani_pos_trader,sort=nearest,limit=1] unless data entity @s WanderTarget run tag @e[type=armor_stand,tag=ani_trader_walk,sort=nearest,limit=1] add ani_trader_walk_end
execute unless entity @e[type=wandering_trader,tag=ani_pos_trader] run tag @s add ani_trader_walk_end

teleport @s @e[type=wandering_trader,tag=ani_pos_trader,sort=nearest,limit=1]
data modify entity @s Rotation[0] set from entity @e[type=wandering_trader,tag=ani_pos_trader,sort=nearest,limit=1] Rotation[0]

execute if score @s ani_walk_speed matches 1 run attribute @e[type=wandering_trader,tag=ani_pos_trader,sort=nearest,limit=1] generic.movement_speed base set 0.25
execute if score @s ani_walk_speed matches 2 run attribute @e[type=wandering_trader,tag=ani_pos_trader,sort=nearest,limit=1] generic.movement_speed base set 0.35
execute if score @s ani_walk_speed matches 3 run attribute @e[type=wandering_trader,tag=ani_pos_trader,sort=nearest,limit=1] generic.movement_speed base set 0.45
execute if score @s ani_walk_speed matches 4 run attribute @e[type=wandering_trader,tag=ani_pos_trader,sort=nearest,limit=1] generic.movement_speed base set 0.5
execute if score @s ani_walk_speed matches 5 run attribute @e[type=wandering_trader,tag=ani_pos_trader,sort=nearest,limit=1] generic.movement_speed base set 0.55
execute if score @s ani_walk_speed matches 6 run attribute @e[type=wandering_trader,tag=ani_pos_trader,sort=nearest,limit=1] generic.movement_speed base set 0.7

tag @e[tag=ani_pos_trader] remove ani_pos_trader