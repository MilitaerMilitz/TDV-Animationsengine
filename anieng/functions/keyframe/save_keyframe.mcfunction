# call as ani_data marker

function anieng:keyframe/util/build_keyframe

data modify entity @s data.Keyframes[0] set from storage ani_out data
data remove storage ani_out data

execute unless score @e[tag=ani_sel_as,limit=1] ani_selkey = @e[tag=ani_sel_as,limit=1] ani_keyam run function anieng:keyframe/util/recalculate_trans_end