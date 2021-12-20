function anieng:util/find_as

execute as @e[tag=ani_sel_as,tag=ani_glow] run effect clear @s glowing
execute as @e[tag=ani_sel_as,tag=ani_glow] run tag @s remove ani_glow

execute store result score @s ani_if_sel_u0 run data get entity @e[tag=ani_act,sort=nearest,limit=1] UUID[0]
execute store result score @s ani_if_sel_u1 run data get entity @e[tag=ani_act,sort=nearest,limit=1] UUID[1]
execute store result score @s ani_if_sel_u2 run data get entity @e[tag=ani_act,sort=nearest,limit=1] UUID[2]
execute store result score @s ani_if_sel_u3 run data get entity @e[tag=ani_act,sort=nearest,limit=1] UUID[3]

execute as @e[tag=ani_act,sort=nearest,limit=1] run effect give @s glowing 1 1 true

execute as @e[tag=ani_sel_as,sort=nearest,limit=1] unless score @s ani_action matches 1.. run scoreboard players set @s ani_action 2
execute if score @e[tag=ani_sel_as,sort=nearest,limit=1] ani_action matches 3.. run scoreboard players operation @s ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_action

tag @e[tag=ani_sel_as] remove ani_sel_as