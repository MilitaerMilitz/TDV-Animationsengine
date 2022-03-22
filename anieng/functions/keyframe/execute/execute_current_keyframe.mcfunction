# @s: ani_act
# pre: ani_sel_data exists
# do: Executes current loaded keyframe
# return: void

# loads selected keyframe
execute as @e[tag=ani_sel_data] at @s run function anieng:keyframe/util/load_keyframe_into_ram

# load StartData
data modify storage ani_in data.Snap set from entity @s Passengers[0].data.StartData
function anieng:keyframe/util/load_snapshot
data remove storage ani_in data

# execute keyframe
function anieng:keyframe/execute/action/execute_action

# execute Pose
data modify storage ani_in data.Pose set from entity @s Passengers[0].data.EndData.Pose
function anieng:keyframe/util/load_pose_animate

