scoreboard players set @s ani_left_leg_x_s 45

execute if score @s ani_left_leg_x matches 45.. run tag @s remove ani_walk_pos

execute unless entity @s[tag=ani_walk_ntep] unless entity @s[tag=ani_walk_back] run function anieng:animation/walk/walk_speed3_for
execute unless entity @s[tag=ani_walk_ntep] if entity @s[tag=ani_walk_back] run function anieng:animation/walk/walk_speed3_back