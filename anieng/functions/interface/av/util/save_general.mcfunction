# @s: ani_act
# pre: action is constructed; ani_sel_data exists
# do: execute constructed action
# return: void

# save: move to Pose
function anieng:keyframe/util/construct_pose
data modify entity @e[tag=ani_sel_data,limit=1] data.Ram.Pose set from storage ani_out data.Pose

# load StartData
data modify storage ani_in data.Snap set from entity @e[tag=ani_sel_data,limit=1] data.StartData
function anieng:keyframe/util/load_snapshot

# execute action
data modify storage ani_in data.Pose set from storage ani_out data.Pose
function anieng:keyframe/util/load_pose_animate
function anieng:keyframe/execute/action/execute_action

# clear()
data remove storage ani_out data

# call as ani_data marker

# execute Pose animation
#execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/construct_pose

#data modify storage ani_in data.Snap set from entity @s data.StartData
#execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/load_snapshot

#data modify entity @s data.Ram.Pose set from storage ani_out data.Pose
#data modify storage ani_in data.Pose set from storage ani_out data.Pose
#execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/load_pose_animate

# clear()
#scoreboard players reset #teeBool ani_ram
#data remove storage ani_out data