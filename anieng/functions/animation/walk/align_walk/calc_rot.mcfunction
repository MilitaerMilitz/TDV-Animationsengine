# @s: ani_act
# input: #rot ani_ram, #sollRot ani_ram
# optional input: tag = ani_walk_rot_pos/neg
# manipulates: @s Rotation
# do: Moves the magical border -180/180 degrees, so that armorstand rotate always shortest way. Direction of rotation can be controlled with ani_walk_rot_pos/neg
# return: #rot ani_ram

# isRot = rot
scoreboard players operation #isRot ani_ram = #rot ani_ram

# if (sollRot > 0) rot = calcRotPos(rot, sollRot)
execute if score #sollRot ani_ram matches 1.. run function anieng:animation/walk/align_walk/calc_rot_pos

# if (sollRot <= 0) rot = calcRotNeg(rot, sollRot)
execute if score #sollRot ani_ram matches ..0 run function anieng:animation/walk/align_walk/calc_rot_neg

# if (rotPositive && wouldRotNegative()) rot += 360
execute if entity @s[tag=ani_walk_rot_pos] if score #rot ani_ram < #isRot ani_ram run scoreboard players add #rot ani_ram 360

# if (not rotPositive && wouldRotPositive()) rot -= 360
execute if entity @s[tag=ani_walk_rot_neg] if score #rot ani_ram > #isRot ani_ram run scoreboard players remove #rot ani_ram 360

# if (backwards) rot += 180
execute if entity @s[tag=ani_walk_back] run scoreboard players add #rot ani_ram 180

# clear()
scoreboard players reset #isRot ani_ram
