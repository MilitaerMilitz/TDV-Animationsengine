tag @s remove ani_align_walk_init
tag @s remove ani_rot_walk_rot
tag @s add ani_align_walk
execute if entity @s[tag=!ani_walk] run tag @s add ani_walk_init

function anieng:util/summon_target_markers

data modify entity @s Rotation[1] set from entity @e[tag=ani_tmp_align,sort=nearest,limit=1] Rotation[1]
execute store result score #rot ani_ram run data get entity @e[tag=ani_tmp_align,sort=nearest,limit=1] Rotation[0]
scoreboard players operation #sollRot ani_ram = @s ani_rot_s

function anieng:animation/walk/align_walk/walk_align

scoreboard players operation @s ani_rot_s = #rot ani_ram

execute at @e[tag=ani_tmp] if entity @s[distance=..0.1] run tag @s add ani_align_walk_end

scoreboard players reset #rot ani_ram
scoreboard players reset #sollRot ani_ram
kill @e[tag=ani_tmp]
kill @e[tag=ani_tmp_align]