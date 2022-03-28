# @s: ani_act
# uses: @s ani_ram, manipulates Pose.LeftLeg.Z
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_left_leg_z_s > @s ani_left_leg_z run function anieng:animation/move/left_leg_z_pos

# if (is > goal) moveNeg()
execute if score @s ani_left_leg_z_s < @s ani_left_leg_z run function anieng:animation/move/left_leg_z_neg

# if (not exists(Pose.LeftLeg)) create();
execute unless data entity @s Pose.LeftLeg run data merge entity @s {Pose:{LeftLeg:[0f,0f,1f]}}

# Pose.LeftLeg.Z = left_leg_z
execute store result entity @s Pose.LeftLeg[2] float 1 run scoreboard players get @s ani_left_leg_z