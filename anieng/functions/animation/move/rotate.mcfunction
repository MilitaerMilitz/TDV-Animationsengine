# @s: ani_act
# uses: @s ani_ram, manipulates Rotation[0]
# do: Rotate armorstand tile one step by binding score to tile
# return: void

# if (is < goal) rotatePos()
execute if score @s ani_rot_s > @s ani_rot run function anieng:animation/move/rotate_pos

# if (is > goal) rotateNeg()
execute if score @s ani_rot_s < @s ani_rot run function anieng:animation/move/rotate_neg

# Rotation[0] = rot
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ani_rot