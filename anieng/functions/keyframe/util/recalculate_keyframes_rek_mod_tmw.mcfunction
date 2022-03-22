# <help function>
# @s: ani_data
# pre: Action is Time Walk

execute as @e[tag=ani_sel_as,limit=1] run function anieng:keyframe/util/create_snapshot
data modify storage ani_ram3 data.Snap set from storage ani_out data.Snap
data remove storage ani_out data

data modify storage ani_in data.Snap set from entity @s data.Keyframes[0].StartData
execute as @e[tag=ani_sel_as,limit=1] run function anieng:keyframe/util/load_snapshot

data modify storage ani_in data.StartData set from entity @s data.Keyframes[0].StartData
data modify storage ani_in data.Action set from entity @s data.Keyframes[0].Action
execute store result score #rot_s ani_ram run data get entity @s data.Keyframes[0].EndData.Pose.Rotation
execute store result score #rot_speed ani_ram run data get entity @s data.Keyframes[0].EndData.Pose.Speed.Rotation

execute as @e[tag=ani_sel_as,limit=1] run function anieng:animation/walk/tmw_simulation/simulate_time_walk

data modify storage ani_in data.Snap set from storage ani_ram3 data.Snap
execute as @e[tag=ani_sel_as,limit=1] run function anieng:keyframe/util/load_snapshot

data modify entity @s data.Keyframes[0].EndData set from storage ani_out data.EndData


# clear
data remove storage ani_ram3 data