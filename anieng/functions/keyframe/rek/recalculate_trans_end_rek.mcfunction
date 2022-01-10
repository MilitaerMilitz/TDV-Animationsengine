# call as ani_data

# calculate EndData for selected keyframe
data modify storage ani_in data.StartData set from entity @s data.Keyframes[0].StartData
data modify storage ani_in data.Transition set from entity @s data.Keyframes[0].Transition
function anieng:keyframe/util/create_enddata
data modify entity @s data.Keyframes[0].EndData set from storage ani_out data.EndData
data remove storage ani_out data

# prepare next call if existent
execute store result score #frame ani_ram run data get entity @s data.Keyframes[0].Frame
execute unless score #frame ani_ram = @e[tag=ani_sel_as,limit=1] ani_keyam run function anieng:keyframe/util/transfer_end_start
execute unless score #frame ani_ram = @e[tag=ani_sel_as,limit=1] ani_keyam run function anieng:keyframe/util/move_first_keyframe_to_end

# recursive call if needed
execute unless score #frame ani_ram = @e[tag=ani_sel_as,limit=1] ani_keyam run function anieng:keyframe/rek/recalculate_trans_end_rek