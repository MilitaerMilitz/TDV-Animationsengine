# call as animation Armorstand
# apply snapshot to Armorstand which have to be located in storage ani_in data.Snap
# storage ani_in will be deleted

# move Snap into storage ani_ram
data modify storage ani_ram data.Snap set from storage ani_in data.Snap
data remove storage ani_in data

data modify storage ani_in data.Pose set from storage ani_ram data.Snap.Pose
function anieng:keyframe/util/load_pose_instant

# set Position
data modify entity @s Pos set from storage ani_ram data.Snap.Pos

# [debug] set cooldown for existence checking between Armorstand and data marker
scoreboard players set #vtout ani_ram 20

# clear
data remove storage ani_ram data