function anieng:util/find_as

scoreboard players remove @e[tag=ani_sel_as] ani_walk_speed 1
scoreboard players operation @e[tag=ani_sel_as] ani_walk_speed %= 7 numbers
execute as @e[tag=ani_sel_as,sort=nearest,limit=1] if score @s ani_walk_speed matches 0 run scoreboard players set @s ani_walk_speed 6

tag @e[tag=ani_sel_as] remove ani_sel_as