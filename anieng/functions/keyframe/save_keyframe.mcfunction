# @s: ani_data
# pre: S_old == S_new is recommended
# do: Builds new keyframe and overwrites old; Recalculates following keyframes
# return: void

# construct new keyframe with old Frame id
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/build_new_keyframe
data modify storage ani_out data.Frame set from entity @s data.Keyframes[0].Frame

# Saves old EndData for if condition
data modify storage ani_in data.nbt1 set from entity @s data.Keyframes[0].EndData

# Overwrite old
data modify entity @s data.Keyframes[0] set from storage ani_out data

# Saves new EndData for if condition
data modify storage ani_in data.nbt2 set from entity @s data.Keyframes[0].EndData

# Recalculate if EndData was changed
function anieng:util/nbt_equal
execute if score #equal ani_ram matches 0 as @e[tag=ani_sel_as,limit=1] run function anieng:keyframe/util/recalculate_keyframes

# clear
scoreboard players reset #equal ani_ram