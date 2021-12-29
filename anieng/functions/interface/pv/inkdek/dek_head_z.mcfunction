function anieng:util/find_as

scoreboard players operation #value ani_ram = @e[tag=ani_sel_as] ani_head_z_s
scoreboard players operation #value ani_ram -= @s ani_if_summand

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:animation/move/instant/head_z

# clear
tag @e[tag=ani_sel_as] remove ani_sel_as