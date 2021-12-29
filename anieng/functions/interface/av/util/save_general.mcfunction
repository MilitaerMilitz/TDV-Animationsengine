# call as ani_data marker

# execute Pose animation
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/construct_pose
execute as @e[tag=ani_sel_data,limit=1] at @s run function anieng:keyframe/util/load_startdata
data modify entity @s data.Ram.Pose set from storage ani_out data.Pose
data modify storage ani_in data.Pose set from storage ani_out data.Pose
scoreboard players set #animate ani_ram 1
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/load_pose

# reset previous stored action
data modify entity @s data.Action set value {}

# store that action is time walk
execute store result entity @s data.Action.id int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_action

# clear
scoreboard players reset #teeBool ani_ram
data remove storage ani_out data