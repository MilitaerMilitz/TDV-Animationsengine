tag @s add ani_walk_nmod
tag @s add ani_walk_init
tag @s add ani_time_walk

execute store result score @s ani_walk_speed run data get entity @e[tag=ani_sel_data,limit=1] data.Action.wspeed

execute store result score #tbw ani_ram run data get entity @e[tag=ani_sel_data,limit=1] data.Action.tbw
execute if score #tbw ani_ram matches 1 run tag @s add ani_walk_back
scoreboard players reset #tbw ani_ram

execute store result score #narm ani_ram run data get entity @e[tag=ani_sel_data,limit=1] data.Action.narm
execute if score #narm ani_ram matches 1 run tag @s add ani_walk_narm
scoreboard players reset #narm ani_ram

execute store result score #ntep ani_ram run data get entity @e[tag=ani_sel_data,limit=1] data.Action.ntep
execute if score #ntep ani_ram matches 1 run tag @s add ani_walk_ntep
scoreboard players reset #ntep ani_ram

execute store result score @s ani_time_walk run data get entity @e[tag=ani_sel_data,limit=1] data.Action.tit