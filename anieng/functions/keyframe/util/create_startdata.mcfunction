# call as ani_data marker

# store previous Pose
execute as @e[tag=ani_sel_as] at @s run function anieng:keyframe/util/construct_pose
data modify entity @s data.StartData.Pose set from storage ani_out data.Pose
data remove storage ani_out data

# store previous Position
data modify entity @s data.StartData.Pos set from entity @e[tag=ani_sel_as,limit=1] Pos