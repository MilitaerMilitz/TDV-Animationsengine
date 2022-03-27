function anieng:util/find_as
execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

execute as @e[tag=ani_sel_as] at @s run function anieng:keyframe/util/clear_keyframes
scoreboard players set @e[tag=ani_sel_as] ani_selkey 2

tag @e[tag=ani_sel_as] remove ani_sel_as
tag @e[tag=ani_sel_data] remove ani_sel_data