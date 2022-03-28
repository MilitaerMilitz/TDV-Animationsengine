# @s: ani_act
# uses: @s ani_ram
# manipulates: Pose.LeftLeg.X
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_left_leg_x_s > @s ani_left_leg_x run function anieng:animation/move/left_leg_x_pos

# if (is > goal) moveNeg()
execute if score @s ani_left_leg_x_s < @s ani_left_leg_x run function anieng:animation/move/left_leg_x_neg

# if (not exists(Pose.LeftLeg)) create();
execute unless data entity @s Pose.LeftLeg run data merge entity @s {Pose:{LeftLeg:[1f,0f,0f]}}

# Pose.LeftLeg.X = left_leg_x
execute store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s ani_left_leg_x