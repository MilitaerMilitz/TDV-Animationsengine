tag @s remove ani_rot_walk_init
tag @s remove ani_walk_fin
tag @s add ani_rot_walk_rot

# mark action running
scoreboard players set @s ani_run 1

function anieng:util/summon_target_markers

data modify entity @s Rotation[1] set from entity @e[tag=ani_tmp_align,sort=nearest,limit=1] Rotation[1]
execute store result score #rot ani_ram run data get entity @e[tag=ani_tmp_align,sort=nearest,limit=1] Rotation[0]
scoreboard players operation #sollRot ani_ram = @s ani_rot_s

function anieng:animation/walk/align_walk/walk_align

scoreboard players operation @s ani_rot_s = #rot ani_ram

kill @e[tag=ani_tmp]
kill @e[tag=ani_tmp_align]