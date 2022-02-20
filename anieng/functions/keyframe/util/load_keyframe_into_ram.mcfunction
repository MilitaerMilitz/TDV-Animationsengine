# @s: ani_data
# do: loads Keyframe data into RAM
# return: void

data modify entity @s data.StartData set from entity @s data.Keyframes[0].StartData
data modify entity @s data.Transition set from entity @s data.Keyframes[0].Transition
data modify entity @s data.EndData set from entity @s data.Keyframes[0].EndData
data modify entity @s data.Action set from entity @s data.Keyframes[0].Action
data modify entity @s data.Tee set from entity @s data.Keyframes[0].Tee