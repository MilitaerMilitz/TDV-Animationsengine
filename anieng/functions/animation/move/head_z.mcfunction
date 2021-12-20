execute if score @s ani_head_z_s > @s ani_head_z run function anieng:animation/move/head_z_pos
execute if score @s ani_head_z_s < @s ani_head_z run function anieng:animation/move/head_z_neg

execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0f,0f,1f]}}
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s ani_head_z