# @s: ani_act
# uses: @s ani_ram
# manipulates Pose.RightLeg.Z
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_rigt_leg_z_s > @s ani_right_leg_z run function anieng:animation/move/right_leg_z_pos

# if (is > goal) moveNeg()
execute if score @s ani_rigt_leg_z_s < @s ani_right_leg_z run function anieng:animation/move/right_leg_z_neg

# if (not exists(Pose.RightLeg)) create();
execute unless data entity @s Pose.RightLeg run data merge entity @s {Pose:{RightLeg:[0f,0f,1f]}}

# Pose.RightLeg.Z = right_leg_z
execute store result entity @s Pose.RightLeg[2] float 1 run scoreboard players get @s ani_right_leg_z