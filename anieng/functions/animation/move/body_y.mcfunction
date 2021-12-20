execute if score @s ani_body_y_s > @s ani_body_y run function anieng:animation/move/body_y_pos
execute if score @s ani_body_y_s < @s ani_body_y run function anieng:animation/move/body_y_neg

execute unless data entity @s Pose.Body run data merge entity @s {Pose:{Body:[0f,1f,0f]}}
execute store result entity @s Pose.Body[1] float 1 run scoreboard players get @s ani_body_y