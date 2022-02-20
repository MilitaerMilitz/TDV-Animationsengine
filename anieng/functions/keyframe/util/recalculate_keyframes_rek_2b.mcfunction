# <help function>
# @s: ani_data

# Enew = Snew + Tnew;
# rekursion call -> propagate;
data modify storage ani_in data.StartData set from entity @s data.Keyframes[0].StartData
data modify storage ani_in data.Transition set from entity @s data.Transition
function anieng:keyframe/util/create_enddata
data modify entity @s data.Keyframes[0] set from storage ani_out data.EndData

# clear
data remove storage ani_out data

# propagate
execute as @e[tag=ani_sel_as,limit=1] unless score @s ani_selkey = @s ani_keyam run function anieng:keyframe/util/recalculate_keyframes_rek_1

