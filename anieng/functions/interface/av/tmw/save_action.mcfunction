function anieng:util/find_as

scoreboard players set @e[tag=ani_sel_as] ani_action 5
scoreboard players set @s ani_ram 5

execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

