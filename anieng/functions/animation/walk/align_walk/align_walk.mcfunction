# @s: ani_act
# input: #rot ani_ram, #sollRot ani_ram
# optional input: tag = ani_walk_rot_pos/neg
# manipulates: @s Rotation
# uses: walk engine
# do: Perform align walk, by using normal walk engine and manipulating rotation
# return: void

# tag -= [...] += [...]
tag @s remove ani_align_walk_init
tag @s remove ani_rot_walk_rot
tag @s add ani_align_walk

# if (tag != walk) walkInit()
execute if entity @s[tag=!ani_walk] run tag @s add ani_walk_init

# ani_tmp = ... ; ani_tmp_align = ... ;
function anieng:util/summon_target_markers

# @s Rotation.Y = ani_tmp_align Rotation.Y
data modify entity @s Rotation[1] set from entity @e[tag=ani_tmp_align,limit=1] Rotation[1]

# rot_s = calcRotation(ani_tmp_align Rotation.X, rot_s)
execute store result score #rot ani_ram run data get entity @e[tag=ani_tmp_align,limit=1] Rotation[0]
scoreboard players operation #sollRot ani_ram = @s ani_rot_s
function anieng:animation/walk/align_walk/calc_rot
scoreboard players operation @s ani_rot_s = #rot ani_ram

# if (target arrived) stop()
execute at @e[tag=ani_tmp] if entity @s[distance=..0.1] run tag @s add ani_align_walk_end

# clear()
scoreboard players reset #rot ani_ram
scoreboard players reset #sollRot ani_ram
kill @e[tag=ani_tmp]
kill @e[tag=ani_tmp_align]