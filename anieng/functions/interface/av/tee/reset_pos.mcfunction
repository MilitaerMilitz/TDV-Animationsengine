function anieng:util/find_as

scoreboard players reset @e[tag=ani_sel_as] ani_tee_x
scoreboard players reset @e[tag=ani_sel_as] ani_tee_y
scoreboard players reset @e[tag=ani_sel_as] ani_tee_z

scoreboard players reset @s ani_ptee_x
scoreboard players reset @s ani_ptee_y
scoreboard players reset @s ani_ptee_z

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:util/find_data
data modify entity @e[tag=ani_sel_data,limit=1] data.Tee set value {}

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as
tag @e[tag=ani_sel_data] remove ani_sel_data