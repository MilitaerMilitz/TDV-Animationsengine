# Sets pwalk Position from @s to the position where command is set

summon marker ~ ~ ~ {Tags:["ani_tmp"]}

execute store result score @s ani_pwalk_x run data get entity @e[type=marker,tag=ani_tmp,sort=nearest,limit=1] Pos[0] 10000
execute store result score @s ani_pwalk_y run data get entity @e[type=marker,tag=ani_tmp,sort=nearest,limit=1] Pos[1] 10000
execute store result score @s ani_pwalk_z run data get entity @e[type=marker,tag=ani_tmp,sort=nearest,limit=1] Pos[2] 10000

kill @e[tag=ani_tmp]