# @s: ani_act
# uses: @s ani_ram, manipulates Pose.RightArm.X
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_rigt_arm_x_s > @s ani_right_arm_x run function anieng:animation/move/right_arm_x_pos

# if (is > goal) moveNeg()
execute if score @s ani_rigt_arm_x_s < @s ani_right_arm_x run function anieng:animation/move/right_arm_x_neg

# if (not exists(Pose.RightArm)) create();
execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[1f,0f,0f]}}

# Pose.RightArm.X = right_arm_x
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s ani_right_arm_x