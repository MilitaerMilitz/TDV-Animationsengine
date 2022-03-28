# @s: ani_act
# uses: @s ani_ram, manipulates Pose.LeftArm.X
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_left_arm_x_s > @s ani_left_arm_x run function anieng:animation/move/left_arm_x_pos

# if (is > goal) moveNeg()
execute if score @s ani_left_arm_x_s < @s ani_left_arm_x run function anieng:animation/move/left_arm_x_neg

# if (not exists(Pose.LeftArm)) create();
execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose:{LeftArm:[1f,0f,0f]}}

# Pose.LeftArm.X = left_arm_x
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s ani_left_arm_x