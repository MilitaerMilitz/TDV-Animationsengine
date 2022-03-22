# @s: ani_act
# pre: 
# do: 
# return:

execute if entity @s[tag=!ani_loop] run tag @s remove ani_play
execute if entity @s[tag=ani_loop] run execute as @e[tag=ani_sel_as] if score @s ani_keyam matches 1.. run scoreboard players set @s ani_selkey 1
execute if entity @s[tag=ani_loop] run execute as @e[tag=ani_sel_data] if score @e[tag=ani_sel_as,limit=1] ani_keyam matches 1.. run function anieng:keyframe/load_keyframe