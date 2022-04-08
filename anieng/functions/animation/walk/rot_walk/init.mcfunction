# @s: ani_act
# input: #rot ani_ram, #sollRot ani_ram
# optional input: tag = ani_walk_rot_pos/neg
# manipulates: @s Rotation
# uses: walk engine, align_walk
# do: Initiate rot walk by let @s rotate. Next @s will be going to target using align_walk
# return: void

# tag management
tag @s remove ani_rot_walk_init
tag @s remove ani_walk_fin
tag @s add ani_rot_walk_rot

# actionRunning = true
scoreboard players set @s ani_run 1

# ani_tmp = ... ; ani_tmp_align = ... ;
function anieng:util/summon_target_markers

# @s Rotation.Y = ani_tmp_align Rotation.Y
data modify entity @s Rotation[1] set from entity @e[tag=ani_tmp_align,limit=1] Rotation[1]

# rot_s = calcRotation(ani_tmp_align Rotation.X, rot_s)
execute store result score #rot ani_ram run data get entity @e[tag=ani_tmp_align,limit=1] Rotation[0]
scoreboard players operation #sollRot ani_ram = @s ani_rot_s
function anieng:animation/walk/align_walk/calc_rot
scoreboard players operation @s ani_rot_s = #rot ani_ram

# clear()
kill @e[tag=ani_tmp]
kill @e[tag=ani_tmp_align]