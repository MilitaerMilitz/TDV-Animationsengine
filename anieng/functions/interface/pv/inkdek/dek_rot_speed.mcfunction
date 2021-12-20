function anieng:util/find_as

execute as @e[tag=ani_sel_as] unless score @s ani_rot_speed matches ..1 run scoreboard players remove @s ani_rot_speed 1

tag @e[tag=ani_sel_as] remove ani_sel_as