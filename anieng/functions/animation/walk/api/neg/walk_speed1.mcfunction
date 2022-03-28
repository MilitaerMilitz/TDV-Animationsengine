scoreboard players set @s ani_left_leg_x_s -20

execute if score @s ani_left_leg_x matches ..-20 run tag @s add ani_walk_pos

execute unless entity @s[tag=ani_walk_ntep] unless entity @s[tag=ani_walk_back] run function anieng:animation/walk/api/teleport/forward_speed1
execute unless entity @s[tag=ani_walk_ntep] if entity @s[tag=ani_walk_back] run function anieng:animation/walk/api/teleport/backward_speed1