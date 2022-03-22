# <help function>
# @s: ani_data

data modify storage ani_in data.StartData set from entity @s data.Keyframes[0].StartData
data modify storage ani_in data.Transition set from entity @s data.Keyframes[0].Transition
data remove storage ani_out data
function anieng:keyframe/util/create_enddata
data modify entity @s data.Keyframes[0].EndData set from storage ani_out data.EndData