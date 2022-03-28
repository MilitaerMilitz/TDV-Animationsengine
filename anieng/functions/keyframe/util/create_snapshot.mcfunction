# call as animation Armorstand
# create Snapshot of animation Armorstand and stores it into storage ani_out data.Snap

# store previous Pose
function anieng:keyframe/util/construct_pose

# move Pose into ram
data merge storage ani_ram {data:{}}
data modify storage ani_ram data.Pose set from storage ani_out data.Pose
data remove storage ani_out data.Pose

# build StartData into storage ani_out
data modify storage ani_out data.Snap.Pose set from storage ani_ram data.Pose
data modify storage ani_out data.Snap.Pos set from entity @s Pos

# clear()
data remove storage ani_ram data