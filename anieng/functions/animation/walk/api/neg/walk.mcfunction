# @s: ani_act
# manipulates: Position if tag=!ani_walk_ntep
# do: Controls teleportation and animation for negative leg movement
# return: void

execute if score @s ani_walk_speed matches 1 run function anieng:animation/walk/api/neg/walk_speed1
execute if score @s ani_walk_speed matches 2 run function anieng:animation/walk/api/neg/walk_speed2
execute if score @s ani_walk_speed matches 3 run function anieng:animation/walk/api/neg/walk_speed3
execute if score @s ani_walk_speed matches 4 run function anieng:animation/walk/api/neg/walk_speed4
execute if score @s ani_walk_speed matches 5 run function anieng:animation/walk/api/neg/walk_speed5
execute if score @s ani_walk_speed matches 6 run function anieng:animation/walk/api/neg/walk_speed6