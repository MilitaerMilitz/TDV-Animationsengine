# @s: ani_data
# do: Resets Situation to begin of Keyframe.
# return: void

# Relocate Armorstand with components into use it.r specific Pose
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:util/find_tiles_from_act

data modify entity @e[tag=ani_sel_as,limit=1] Pos set from entity @s data.StartData.Pos
execute if data entity @s data.Ram.Pose run data modify storage ani_in data.Pose set from entity @s data.Ram.Pose
execute unless data entity @s data.Ram.Pose run data modify storage ani_in data.Pose set from entity @s data.EndData.Pose
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/load_pose_instant

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:main/tile_loop

# [debug] set cooldown for existence checking between Armorstand and components
scoreboard players set @e[tag=ani_sel_as] ani_vtout 20

# clear
data remove entity @s data.Ram.Pose
data modify entity @s data.Action set value {}
tag @e[tag=ani_sel_body] remove ani_sel_body
tag @e[tag=ani_sel_head] remove ani_sel_head