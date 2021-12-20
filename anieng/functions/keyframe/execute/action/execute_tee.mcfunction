# call as Armorstand

execute store result score @s ani_tee_x run data get entity @e[tag=ani_sel_data,limit=1] data.Action.Tee[0]
execute store result score @s ani_tee_y run data get entity @e[tag=ani_sel_data,limit=1] data.Action.Tee[1]
execute store result score @s ani_tee_z run data get entity @e[tag=ani_sel_data,limit=1] data.Action.Tee[2]

summon marker ~ ~ ~ {Tags:["ani_tmp"]}

execute store result entity @e[tag=ani_tmp,limit=1] Pos[0] double 1 run scoreboard players get @s ani_tee_x
execute store result entity @e[tag=ani_tmp,limit=1] Pos[1] double 1 run scoreboard players get @s ani_tee_y
execute store result entity @e[tag=ani_tmp,limit=1] Pos[2] double 1 run scoreboard players get @s ani_tee_z

execute at @e[tag=ani_tmp] run setblock ~ ~ ~ redstone_block

kill @e[tag=ani_tmp]