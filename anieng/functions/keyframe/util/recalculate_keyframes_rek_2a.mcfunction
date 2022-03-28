# <help function>
# @s: ani_data

# Tnew = Enew - Snew;
data modify storage ani_in data.StartData set from entity @s data.Keyframes[0].StartData
data modify storage ani_in data.EndData set from entity @s data.Keyframes[0].EndData
function anieng:keyframe/util/create_transition
data modify entity @s data.Keyframes[0].Transition set from storage ani_out data.Transition

# clear()
data remove storage ani_out data
