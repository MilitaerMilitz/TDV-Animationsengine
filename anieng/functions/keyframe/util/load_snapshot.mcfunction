# call as animation Armorstand
# apply snapshot to Armorstand which have to be located in storage ani_in data.Snap
# storage ani_in will be deleted

# move Snap into storage ani_ram
data modify storage ani_ram data.Snap set from storage ani_in data.Snap
data remove storage ani_in data

data modify storage ani_in data.Pose set from storage ani_ram data.Snap.Pose
function anieng:keyframe/util/load_pose_instant

# set Position
function anieng:util/find_tiles_from_act
data modify entity @s Pos set from storage ani_ram data.Snap.Pos
function anieng:main/tile_loop

# [debug] set cooldown for existence checking between Armorstand and data marker
scoreboard players set @s ani_vtout 20

# clear
data remove storage ani_ram data
tag @e[tag=ani_sel_data] remove ani_sel_data
tag @e[tag=ani_sel_body] remove ani_sel_body
tag @e[tag=ani_sel_head] remove ani_sel_head