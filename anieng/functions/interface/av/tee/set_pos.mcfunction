function anieng:util/find_as

execute store result score @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_x run data get entity @s Pos[0]
execute store result score @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_y run data get entity @s Pos[1]
execute store result score @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_z run data get entity @s Pos[2]

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:util/find_data

data merge entity @e[tag=ani_sel_data,limit=1] {data:{Tee:[0,0,0]}}
execute store result entity @e[tag=ani_sel_data,limit=1] data.Tee[0] int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_tee_x
execute store result entity @e[tag=ani_sel_data,limit=1] data.Tee[1] int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_tee_y
execute store result entity @e[tag=ani_sel_data,limit=1] data.Tee[2] int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_tee_z

# clear
tag @e[tag=ani_sel_as] remove ani_sel_as
tag @e[tag=ani_sel_data] remove ani_sel_data