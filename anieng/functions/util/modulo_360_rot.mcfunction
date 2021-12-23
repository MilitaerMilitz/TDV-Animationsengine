# rot = rot % 360
scoreboard players operation @s ani_rot_s %= 360 numbers
scoreboard players operation @s ani_rot %= 360 numbers
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ani_rot

scoreboard players set test ani_rot_s 1