# kills selected animation Armorstand and its tiles

function anieng:util/find_as
execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_data
execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_tiles_from_act

function anieng:util/sel_kill

scoreboard players set @s ani_ram 400