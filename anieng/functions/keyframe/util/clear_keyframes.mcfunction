# @s: ani_act
# pre: ani_sel_data exists
# do: 
# return: void

execute if score @s ani_keyam matches 1.. run scoreboard players set @s ani_selkey 1
execute if score @e[tag=ani_sel_as,limit=1] ani_keyam matches 1.. as @e[tag=ani_sel_data] run function anieng:keyframe/load_keyframe

scoreboard players set @s ani_keyam 1

function anieng:user/reset_as_pose

execute as @e[tag=ani_sel_data,limit=1] at @s run data modify entity @s data.Action set value {}
execute as @e[tag=ani_sel_data,limit=1] at @s run data modify entity @s data.Tee set value {}

function anieng:keyframe/util/build_new_keyframe

execute as @e[tag=ani_sel_data,limit=1] at @s run data modify entity @s data.Keyframes set value []
execute as @e[tag=ani_sel_data,limit=1] at @s run data modify entity @s data.Keyframes append from storage ani_out data

# clear()
data remove storage ani_out data