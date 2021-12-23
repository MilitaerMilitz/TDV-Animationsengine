# call as animation data

data modify storage ani_in data.Pose set from entity @s data.StartData.Pose
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/util/load_pose

# reset Position
data modify entity @e[tag=ani_sel_as,limit=1] Pos set from entity @s data.StartData.Pos

# [debug] set cooldown for existence checking between Armorstand and data marker
scoreboard players set #vtout ani_ram 20