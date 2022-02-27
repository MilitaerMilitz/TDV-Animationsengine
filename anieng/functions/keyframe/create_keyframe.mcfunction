# @s: ani_act
# pre: ani_sel_data exists
# do: creates Keyframe and appends it
# return: void

# increase keyframe counter
scoreboard players add @s ani_selkey 1
scoreboard players add @s ani_keyam 1

# construct keyframe and append it
function anieng:keyframe/util/build_new_keyframe
execute as @e[tag=ani_sel_data,limit=1] run function anieng:keyframe/util/move_first_keyframe_to_end
data modify entity @e[tag=ani_sel_data,limit=1] data.Keyframes prepend from storage ani_out data
data remove storage ani_out data
function anieng:keyframe/util/load_keyframe_into_ram

# prepare for next new keyframe
execute as @e[tag=ani_sel_data] at @s run function anieng:keyframe/util/prepare_new_keyframe