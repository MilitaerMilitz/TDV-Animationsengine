# call as ani_data
# loads selected keyframe

# select keyframe which is marked in ani_selkey
function anieng:keyframe/util/search_keyframe

# Load Action into Ram
data modify entity @s data.Action set from entity @s data.Keyframes[0].Action
data modify entity @s data.Tee set from entity @s data.Keyframes[0].Tee
execute unless score @e[tag=ani_sel_as,limit=1] ani_selkey = @e[tag=ani_sel_as,limit=1] ani_keyam store result score @e[tag=ani_sel_as] ani_action run data get entity @s data.Action.id

# Load StartData/Transition into Ram
data modify entity @s data.StartData set from entity @s data.Keyframes[0].StartData
data modify entity @s data.Transition set from entity @s data.Keyframes[0].Transition

# calculate EndData
data modify storage ani_in data.StartData set from entity @s data.StartData
data modify storage ani_in data.Transition set from entity @s data.Transition
function anieng:keyframe/util/create_enddata
data modify entity @s data.EndData set from storage ani_out data.EndData
data modify entity @s data.Keyframes[0].EndData set from storage ani_out data.EndData
data remove storage ani_out data

# load snapshot
data modify storage ani_in data.Snap set from entity @s data.EndData
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/load_snapshot