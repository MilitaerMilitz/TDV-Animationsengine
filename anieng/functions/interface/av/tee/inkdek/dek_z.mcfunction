function anieng:util/find_as

execute if score @e[tag=ani_sel_as,limit=1] ani_tee_z matches -2147483648.. run scoreboard players operation @e[tag=ani_sel_as] ani_tee_z -= @s ani_if_summand

tag @e[tag=ani_sel_as] remove ani_sel_as