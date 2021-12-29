# call as ani_data
# loads selected keyframe

function anieng:keyframe/rek/search_keyframe

data modify entity @s data.Action set from entity @s data.Keyframes[0].Action
data modify entity @s data.Tee set from entity @s data.Keyframes[0].Tee

execute unless score @e[tag=ani_sel_as,limit=1] ani_selkey = @e[tag=ani_sel_as,limit=1] ani_keyam store result score @e[tag=ani_sel_as] ani_action run data get entity @s data.Action.id

data modify entity @s data.StartData set from entity @s data.Keyframes[0].StartData
function anieng:keyframe/util/load_startdata