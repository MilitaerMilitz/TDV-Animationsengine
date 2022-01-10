# call as ani_data marker
# build keyframe and saves it into ani_out
# frame id is equal to ani_selkey

# EndData
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/create_snapshot
data modify entity @s data.EndData set from storage ani_out data.Snap
data remove storage ani_out data

# Transition
data merge storage ani_in {StartData:{}, EndData:{}}
data modify storage ani_in data.StartData set from entity @s data.StartData
data modify storage ani_in data.EndData set from entity @s data.EndData
function anieng:keyframe/util/create_transition
data modify entity @s data.Transition set from storage ani_out data.Transition
data remove storage ani_out data

# build keyframe
data merge storage minecraft:ani_out {data:{}}
execute store result storage ani_out data.Frame int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_selkey
data modify storage ani_out data.Action set from entity @s data.Action
data modify storage ani_out data.StartData set from entity @s data.StartData
data modify storage ani_out data.Transition set from entity @s data.Transition
data modify storage ani_out data.EndData set from entity @s data.EndData
execute if data entity @s data.Tee run data modify storage ani_out data.Tee set from entity @s data.Tee