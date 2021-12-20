execute if score @s ani_body_z_s > @s ani_body_z run function anieng:animation/move/body_z_pos
execute if score @s ani_body_z_s < @s ani_body_z run function anieng:animation/move/body_z_neg

execute unless data entity @s Pose.Body run data merge entity @s {Pose:{Body:[0f,0f,1f]}}
execute store result entity @s Pose.Body[2] float 1 run scoreboard players get @s ani_body_z