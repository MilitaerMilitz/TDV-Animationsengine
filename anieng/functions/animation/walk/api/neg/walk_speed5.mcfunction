# @s: ani_act
# manipulates: Position if tag=!ani_walk_ntep
# do: Controls teleportation and animation for speed 5 and negative leg movement
# return: void

# left_leg_x_s = -50
scoreboard players set @s ani_left_leg_x_s -50

# if (left_leg reached end) togglePosAnimation() 
execute if score @s ani_left_leg_x matches ..-50 run tag @s add ani_walk_pos

# if (not ntep) teleport()
execute unless entity @s[tag=ani_walk_ntep] unless entity @s[tag=ani_walk_back] run function anieng:animation/walk/api/teleport/forward_speed5
execute unless entity @s[tag=ani_walk_ntep] if entity @s[tag=ani_walk_back] run function anieng:animation/walk/api/teleport/backward_speed5