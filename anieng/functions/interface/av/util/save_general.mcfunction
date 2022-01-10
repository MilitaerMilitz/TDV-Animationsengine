# call as ani_data marker

# execute Pose animation
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/construct_pose

data modify storage ani_in data.Snap set from entity @s data.EndData
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/load_snapshot

data modify entity @s data.Ram.Pose set from storage ani_out data.Pose
data modify storage ani_in data.Pose set from storage ani_out data.Pose
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/load_pose_animate

# reset previous stored action
data modify entity @s data.Action set value {}

# store that action is time walk
execute store result entity @s data.Action.id int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_action

# clear
scoreboard players reset #teeBool ani_ram
data remove storage ani_out data