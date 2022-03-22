# @s: ani_data
# do: clears Ram and loads Keyframe data into RAM
# post: @e[tag=ani_sel_data] data.Ram is cleared
# return: void

data remove entity @s data.Ram
data modify entity @s data.StartData set from entity @s data.Keyframes[0].StartData
data modify entity @s data.Transition set from entity @s data.Keyframes[0].Transition
data modify entity @s data.EndData set from entity @s data.Keyframes[0].EndData
data modify entity @s data.Action set from entity @s data.Keyframes[0].Action
execute if data entity @s data.Keyframes[0].Action.id store result score @e[tag=ani_sel_as,limit=1] ani_action run data get entity @s data.Keyframes[0].Action.id
execute unless data entity @s data.Keyframes[0].Action.id store result score @e[tag=ani_sel_as,limit=1] ani_action run data get entity @s data.Keyframes[0].Action.id
data modify entity @s data.Tee set from entity @s data.Keyframes[0].Tee