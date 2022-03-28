# @s: ani_act
# uses: @s ani_ram
# manipulates: Pose.Body.Z
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_body_z_s > @s ani_body_z run function anieng:animation/move/body_z_pos

# if (is > goal) moveNeg()
execute if score @s ani_body_z_s < @s ani_body_z run function anieng:animation/move/body_z_neg

# if (not exists(Pose.Body)) create();
execute unless data entity @s Pose.Body run data merge entity @s {Pose:{Body:[0f,0f,1f]}}

# Pose.Body.Z = body_z
execute store result entity @s Pose.Body[2] float 1 run scoreboard players get @s ani_body_z