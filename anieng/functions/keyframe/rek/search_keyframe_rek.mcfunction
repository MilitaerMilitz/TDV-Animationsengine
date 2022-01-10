# call as ani_data

function anieng:keyframe/util/move_first_keyframe_to_end

execute store result score #frame ani_ram run data get entity @s data.Keyframes[0].Frame
execute unless score #frame ani_ram = @e[tag=ani_sel_as,limit=1] ani_selkey run function anieng:keyframe/rek/search_keyframe_rek