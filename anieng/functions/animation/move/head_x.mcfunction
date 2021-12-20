execute if score @s ani_head_x_s > @s ani_head_x run function anieng:animation/move/head_x_pos
execute if score @s ani_head_x_s < @s ani_head_x run function anieng:animation/move/head_x_neg

execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[1f,0f,0f]}}
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s ani_head_x