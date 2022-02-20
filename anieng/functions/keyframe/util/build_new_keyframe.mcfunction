# @s: ani_act
# pre: ani_sel_data exists
# do: Takes actual Armorstand position and builds keyframe ending there.
# return: Keyframe := ani_out data

# basic data transmition
data merge storage ani_ram2 {data:{Frame:{}, StartData:{}, Transition:{}, EndData:{}, Action:{}, Tee:{}}}
execute store result storage ani_ram2 data.Frame int 1 run scoreboard players get @s ani_keyam
data modify storage ani_ram2 data.StartData set from entity @e[tag=ani_sel_data,limit=1] data.StartData
data modify storage ani_ram2 data.Action set from entity @e[tag=ani_sel_data,limit=1] data.Action
data modify storage ani_ram2 data.Tee set from entity @e[tag=ani_sel_data,limit=1] data.Tee

# calculate EndData
function anieng:keyframe/util/create_snapshot
data modify entity @e[tag=ani_sel_data,limit=1] data.EndData set from storage ani_out data.Snap 
data modify storage ani_ram2 data.EndData set from storage ani_out data.Snap
data remove storage ani_out data

# calculate Transition
data merge storage ani_in {data:{StartData:{}, EndData:{}}}
data modify storage ani_in data.StartData set from storage ani_ram2 data.StartData
data modify storage ani_in data.EndData set from storage ani_ram2 data.EndData

function anieng:keyframe/util/create_transition
data modify storage ani_ram2 data.Transition set from storage ani_out data.Transition
data remove storage ani_out data

# return
data modify storage ani_out data set from storage ani_ram2 data 
data remove storage ani_ram2 data

# clear
data remove storage ani_ram2 data