# @s: ani_act
# uses: @s ani_ram, manipulates Pose.LeftLeg.Y
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_left_leg_y_s > @s ani_left_leg_y run function anieng:animation/move/left_leg_y_pos

# if (is > goal) moveNeg()
execute if score @s ani_left_leg_y_s < @s ani_left_leg_y run function anieng:animation/move/left_leg_y_neg

# if (not exists(Pose.LeftLeg)) create();
execute unless data entity @s Pose.LeftLeg run data merge entity @s {Pose:{LeftLeg:[0f,1f,0f]}}

# Pose.LeftLeg.Y = left_leg_y
execute store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get @s ani_left_leg_y