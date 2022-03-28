# @s: ani_act
# uses: @s ani_ram
# manipulates: Pose.Body.X
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_body_x_s > @s ani_body_x run function anieng:animation/move/body_x_pos

# if (is > goal) moveNeg()
execute if score @s ani_body_x_s < @s ani_body_x run function anieng:animation/move/body_x_neg

# if (not exists(Pose.Body)) create();
execute unless data entity @s Pose.Body run data merge entity @s {Pose:{Body:[1f,0f,0f]}}

# Pose.Body.X = body_x
execute store result entity @s Pose.Body[0] float 1 run scoreboard players get @s ani_body_x