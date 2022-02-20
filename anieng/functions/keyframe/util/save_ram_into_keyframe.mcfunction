# @s: ani_data
# do: transfer ram into selected keyframe
# return: void

# select ani_selkey
function anieng:keyframe/util/search_keyframe

# transfer data
data modify entity @s data.Keyframe[0].StartData set from entity @s data.StartData
data modify entity @s data.Keyframe[0].Transition set from entity @s data.Transition
data modify entity @s data.Keyframe[0].EndData set from entity @s data.EndData
data modify entity @s data.Keyframe[0].Action set from entity @s data.Action
data modify entity @s data.Keyframe[0].Tee set from entity @s data.Tee