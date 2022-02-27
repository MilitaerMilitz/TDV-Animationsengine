# <help function>
# @s: ani_data

# Enew = Snew + Told;
# rekursion call -> propagate;
data modify storage ani_in data.StartData set from entity @s data.Keyframes[0].StartData
data modify storage ani_in data.Transition set from entity @s data.Keyframes[0].Transition
function anieng:keyframe/util/create_enddata
data modify entity @s data.Keyframes[0].EndData set from storage ani_out data.EndData

# clear
data remove storage ani_out data

# propagate
execute unless score @e[tag=ani_sel_as,limit=1] ani_selkey = @e[tag=ani_sel_as,limit=1] ani_keyam run function anieng:keyframe/util/recalculate_keyframes_rek_1

