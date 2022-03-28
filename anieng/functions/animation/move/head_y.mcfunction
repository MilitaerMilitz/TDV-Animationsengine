# @s: ani_act
# uses: @s ani_ram, manipulates Pose.Head.Y
# do: Move armorstand tile one step by binding score to tile
# return: void

# if (is < goal) movePos()
execute if score @s ani_head_y_s > @s ani_head_y run function anieng:animation/move/head_y_pos

# if (is > goal) moveNeg()
execute if score @s ani_head_y_s < @s ani_head_y run function anieng:animation/move/head_y_neg

# if (not exists(Pose.Head)) create();
execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0f,1f,0f]}}

# Pose.Head.Y = head_y
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @s ani_head_y