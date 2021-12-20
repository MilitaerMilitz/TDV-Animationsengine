execute unless score @s ani_time_walk matches -1.. run scoreboard players set @s ani_time_walk 0

execute if score @s ani_time_walk matches 1.. run scoreboard players remove @s ani_time_walk 1
execute if score @s ani_time_walk matches 0 run tag @s add ani_walk_end