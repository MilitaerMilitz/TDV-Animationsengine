# @s: ani_act
# uses: @s ani_ram, manipulates Pose.RightLeg.Y
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_rigt_leg_y_s > @s ani_right_leg_y run function anieng:animation/move/right_leg_y_pos

# if (is > goal) moveNeg()
execute if score @s ani_rigt_leg_y_s < @s ani_right_leg_y run function anieng:animation/move/right_leg_y_neg

# if (not exists(Pose.RightLeg)) create();
execute unless data entity @s Pose.RightLeg run data merge entity @s {Pose:{RightLeg:[0f,1f,0f]}}

# Pose.RightLeg.Y = right_leg_y
execute store result entity @s Pose.RightLeg[1] float 1 run scoreboard players get @s ani_right_leg_y