# @s: ani_act
# uses: @s ani_ram, manipulates Pose.Body.Y
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_body_y_s > @s ani_body_y run function anieng:animation/move/body_y_pos

# if (is > goal) moveNeg()
execute if score @s ani_body_y_s < @s ani_body_y run function anieng:animation/move/body_y_neg

# if (not exists(Pose.Body)) create();
execute unless data entity @s Pose.Body run data merge entity @s {Pose:{Body:[0f,1f,0f]}}

# Pose.Body.Y = body_y
execute store result entity @s Pose.Body[1] float 1 run scoreboard players get @s ani_body_y