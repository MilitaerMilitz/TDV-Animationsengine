scoreboard players set @s ani_left_leg_x_s -50

execute if score @s ani_left_leg_x matches ..-50 run tag @s add ani_walk_pos

execute unless entity @s[tag=ani_walk_ntep] unless entity @s[tag=ani_walk_back] run function anieng:animation/walk/walk_speed5_for
execute unless entity @s[tag=ani_walk_ntep] if entity @s[tag=ani_walk_back] run function anieng:animation/walk/walk_speed5_back