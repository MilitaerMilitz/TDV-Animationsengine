# call as ani_data marker
# call only if selected keyframe is last keyframe
# creates new keyframe and append to end

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

# Move EndData to StartData
data modify entity @s data.StartData set from entity @s data.EndData
data modify entity @s data.EndData set value {}