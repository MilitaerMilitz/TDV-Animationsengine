# exist check ani_act and ani_data are one unit, if one of them is killed the other part will vanish too.
execute if score #vtout ani_ram matches 1.. run scoreboard players remove #vtout ani_ram 1
execute if score #vtout ani_ram matches ..0 run scoreboard players reset #vtout ani_ram

execute unless score #vtout ani_ram matches -1000.. as @e[tag=ani_act] at @s unless entity @e[tag=ani_data,distance=..2] run kill @s
execute unless score #vtout ani_ram matches -1000.. as @e[tag=ani_data] at @s unless entity @e[tag=ani_act,distance=..2] run kill @s