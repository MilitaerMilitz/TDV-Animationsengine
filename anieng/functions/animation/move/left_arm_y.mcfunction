# @s: ani_act
# uses: @s ani_ram
# manipulates: Pose.LeftArm.Y
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_left_arm_y_s > @s ani_left_arm_y run function anieng:animation/move/left_arm_y_pos

# if (is > goal) moveNeg()
execute if score @s ani_left_arm_y_s < @s ani_left_arm_y run function anieng:animation/move/left_arm_y_neg

# if (not exists(Pose.LeftArm)) create();
execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose:{LeftArm:[0f,1f,0f]}}

# Pose.LeftArm.Y = left_arm_y
execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get @s ani_left_arm_y