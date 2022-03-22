# @s: ani_act
# pre: ani_sel_data exists
# do: Propagate changes in keyframe to all following keyframes
# post: Changes in keyframe are now propagated; Ram will be overitten by loading last keyframe; ani_ram data is cleared
# return: void

# save selected keyframe
scoreboard players operation #Frame ani_ram = @s ani_selkey

# propagate changes
execute if score @s ani_selkey < @s ani_keyam as @e[tag=ani_sel_data,limit=1] run function anieng:keyframe/util/recalculate_keyframes_rek_1

# restore selected keyframe
scoreboard players operation @s ani_selkey = #Frame ani_ram
execute as @e[tag=ani_sel_data,limit=1] at @s run function anieng:keyframe/util/search_keyframe
execute as @e[tag=ani_sel_data,limit=1] at @s run function anieng:keyframe/util/load_keyframe_into_ram

# if last selected clear Ram to prepare creating new keyframe
execute as @e[tag=ani_sel_as,limit=1] at @s if score @s ani_keyam = @s ani_selkey run function anieng:keyframe/util/prepare_new_keyframe

# clear
scoreboard players reset #Frame ani_ram