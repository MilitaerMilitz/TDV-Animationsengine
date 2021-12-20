execute if score @s ani_body_x_s > @s ani_body_x run function anieng:animation/move/body_x_pos
execute if score @s ani_body_x_s < @s ani_body_x run function anieng:animation/move/body_x_neg

execute unless data entity @s Pose.Body run data merge entity @s {Pose:{Body:[1f,0f,0f]}}
execute store result entity @s Pose.Body[0] float 1 run scoreboard players get @s ani_body_x