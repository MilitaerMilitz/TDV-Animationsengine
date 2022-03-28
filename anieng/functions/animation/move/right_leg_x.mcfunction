# @s: ani_act
# uses: @s ani_ram, manipulates Pose.RightLeg.X
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_rigt_leg_x_s > @s ani_right_leg_x run function anieng:animation/move/right_leg_x_pos

# if (is > goal) moveNeg()
execute if score @s ani_rigt_leg_x_s < @s ani_right_leg_x run function anieng:animation/move/right_leg_x_neg

# if (not exists(Pose.RightLeg)) create();
execute unless data entity @s Pose.RightLeg run data merge entity @s {Pose:{RightLeg:[1f,0f,0f]}}

# Pose.RightLeg.X = right_leg_x
execute store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s ani_right_leg_x