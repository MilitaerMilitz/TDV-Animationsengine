# summon two markers, the first (tag=ani_tmp) at target position. The second (tag=ani_tmp_align) will summoned at @s position facing the first marker. 
# Note to kill both markers if ready.

summon marker ~ ~ ~ {Tags:["ani_tmp"]}

execute store result entity @e[tag=ani_tmp,sort=nearest,limit=1] Pos[0] double 0.0001 run scoreboard players get @s ani_pwalk_x
execute store result entity @e[tag=ani_tmp,sort=nearest,limit=1] Pos[1] double 0.0001 run scoreboard players get @s ani_pwalk_y
execute store result entity @e[tag=ani_tmp,sort=nearest,limit=1] Pos[2] double 0.0001 run scoreboard players get @s ani_pwalk_z

summon marker ~ ~ ~ {Tags:["ani_tmp_align"]}
execute as @e[tag=ani_tmp_align] at @s run teleport @s ~ ~ ~ facing entity @e[tag=ani_tmp,sort=nearest,limit=1]