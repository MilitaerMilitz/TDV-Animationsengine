function anieng:util/find_as

scoreboard players operation @e[tag=ani_sel_as] ani_time_walk += @s ani_if_summand

tag @e[tag=ani_sel_as] remove ani_sel_as