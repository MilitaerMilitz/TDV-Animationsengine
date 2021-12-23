# call as ani_data
data modify entity @s data.Keyframes append from entity @s data.Keyframes[0]
data remove entity @s data.Keyframes[0]

execute store result score #frame ani_ram run data get entity @s data.Keyframes[0].Frame
execute unless score #frame ani_ram = @e[tag=ani_sel_as,limit=1] ani_selkey run function anieng:keyframe/rek/search_keyframe_rek