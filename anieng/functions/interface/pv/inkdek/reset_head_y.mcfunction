function anieng:util/find_as

scoreboard players set #value ani_ram 0

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:animation/move/instant/head_y

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as