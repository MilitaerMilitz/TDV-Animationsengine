# @s: ani_act
# uses: @s ani_ram
# manipulates Pose.RightArm.Y
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_rigt_arm_y_s > @s ani_right_arm_y run function anieng:animation/move/right_arm_y_pos

# if (is > goal) moveNeg()
execute if score @s ani_rigt_arm_y_s < @s ani_right_arm_y run function anieng:animation/move/right_arm_y_neg

# if (not exists(Pose.RightArm)) create();
execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[0f,1f,0f]}}

# Pose.RightArm.Y = right_arm_y
execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @s ani_right_arm_y