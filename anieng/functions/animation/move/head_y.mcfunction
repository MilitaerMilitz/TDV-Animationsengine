execute if score @s ani_head_y_s > @s ani_head_y run function anieng:animation/move/head_y_pos
execute if score @s ani_head_y_s < @s ani_head_y run function anieng:animation/move/head_y_neg

execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0f,1f,0f]}}
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @s ani_head_y