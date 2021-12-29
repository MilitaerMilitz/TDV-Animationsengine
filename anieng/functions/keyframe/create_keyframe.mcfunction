# call as ani_data marker
# call only if selected keyframe is last keyframe
# creates new keyframe and append to end

# save StartData
function anieng:keyframe/util/create_startdata

# score stuff
scoreboard players add @e[tag=ani_sel_as,limit=1] ani_keyam 1
scoreboard players add @e[tag=ani_sel_as,limit=1] ani_selkey 1

function anieng:keyframe/util/build_keyframe

# append ready build keyframe
data modify entity @s data.Keyframes append from storage ani_out data
data remove storage ani_out data

# reset Action
data modify entity @s data.Action set value {}
data modify entity @s data.Tee set value {}
scoreboard players set @e[tag=ani_sel_as,limit=1] ani_action 2