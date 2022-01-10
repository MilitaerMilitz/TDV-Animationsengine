# call as ani_data
# assumes that ani_selkey is selected
# recalculate from ani_selkey all following StartData and EndData

scoreboard players operation #frame ani_ram = @e[tag=ani_sel_as,limit=1] ani_selkey

function anieng:keyframe/rek/recalculate_trans_end_rek

scoreboard players operation @e[tag=ani_sel_as,limit=1] ani_selkey = #frame ani_ram
function anieng:keyframe/load_keyframe

# clear
scoreboard players reset #frame ani_ram