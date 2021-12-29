function anieng:util/find_as

scoreboard players operation #value ani_ram = @e[tag=ani_sel_as,limit=1] ani_head_x_s
scoreboard players operation #value ani_ram -= @s ani_if_summand

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:animation/move/instant/head_x

# clear
tag @e[tag=ani_sel_as] remove ani_sel_as