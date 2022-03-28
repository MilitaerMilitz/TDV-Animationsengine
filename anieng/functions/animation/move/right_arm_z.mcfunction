# @s: ani_act
# uses: @s ani_ram, manipulates Pose.RightArm.Z
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_rigt_arm_z_s > @s ani_right_arm_z run function anieng:animation/move/right_arm_z_pos

# if (is > goal) moveNeg()
execute if score @s ani_rigt_arm_z_s < @s ani_right_arm_z run function anieng:animation/move/right_arm_z_neg

# if (not exists(Pose.RightArm)) create();
execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[0f,0f,1f]}}

# Pose.RightArm.Z = right_arm_z
execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get @s ani_right_arm_z