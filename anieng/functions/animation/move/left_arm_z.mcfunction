# @s: ani_act
# uses: @s ani_ram
# manipulates: Pose.LeftArm.Z
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_left_arm_z_s > @s ani_left_arm_z run function anieng:animation/move/left_arm_z_pos

# if (is > goal) moveNeg()
execute if score @s ani_left_arm_z_s < @s ani_left_arm_z run function anieng:animation/move/left_arm_z_neg

# if (not exists(Pose.LeftArm)) create();
execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose:{LeftArm:[0f,0f,1f]}}

# Pose.LeftArm.Z = left_arm_z
execute store result entity @s Pose.LeftArm[2] float 1 run scoreboard players get @s ani_left_arm_z