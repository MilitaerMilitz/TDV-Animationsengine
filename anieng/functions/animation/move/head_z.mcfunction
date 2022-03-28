# @s: ani_act
# uses: @s ani_ram, manipulates Pose.Head.Z
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_head_z_s > @s ani_head_z run function anieng:animation/move/head_z_pos

# if (is > goal) moveNeg()
execute if score @s ani_head_z_s < @s ani_head_z run function anieng:animation/move/head_z_neg

# if (not exists(Pose.Head)) create();
execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0f,0f,1f]}}

# Pose.Head.Z = head_z
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s ani_head_z