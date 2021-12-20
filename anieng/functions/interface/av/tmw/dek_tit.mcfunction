function anieng:util/find_as

scoreboard players operation @e[tag=ani_sel_as] ani_time_walk -= @s ani_if_summand
execute as @e[tag=ani_sel_as,sort=nearest,limit=1] if score @s ani_time_walk matches ..0 run scoreboard players set @s ani_time_walk 0

tag @e[tag=ani_sel_as] remove ani_sel_as