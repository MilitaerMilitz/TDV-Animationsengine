# @s: ani_act
# pre: ani_sel_data exist
# do: 
# return:

scoreboard players set @s ani_selkey 0
execute as @e[tag=ani_sel_data] at @s run function anieng:keyframe/load_keyframe