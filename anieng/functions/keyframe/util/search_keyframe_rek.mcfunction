# <help function>
# @s: ani_data

function anieng:keyframe/util/move_first_keyframe_to_end

execute store result score #frame ani_ram run data get entity @s data.Keyframes[0].Frame
execute unless score #startFrame ani_ram = #frame ani_ram unless score #frame ani_ram = @e[tag=ani_sel_as,limit=1] ani_selkey run function anieng:keyframe/util/search_keyframe_rek

execute if score #startFrame ani_ram = #frame ani_ram as @p run function anieng:keyframe/util/search_keyframe_error