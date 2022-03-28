# @s: ani_act
# manipulates: Position if tag=!ani_walk_ntep
# do: Controls teleportation and animation for speed 3 and positive leg movement
# return: void

# left_leg_x_s = 45
scoreboard players set @s ani_left_leg_x_s 45

# if (left_leg reached end) togglePosAnimation() 
execute if score @s ani_left_leg_x matches 45.. run tag @s remove ani_walk_pos

# if (not ntep) teleport()
execute unless entity @s[tag=ani_walk_ntep] unless entity @s[tag=ani_walk_back] run function anieng:animation/walk/api/teleport/forward_speed3
execute unless entity @s[tag=ani_walk_ntep] if entity @s[tag=ani_walk_back] run function anieng:animation/walk/api/teleport/backward_speed3