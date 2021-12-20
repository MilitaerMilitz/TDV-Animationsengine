function anieng:util/find_as

execute if entity @e[tag=ani_sel_as] run scoreboard players set @e[tag=ani_sel_as] ani_action 4
execute if entity @e[tag=ani_sel_as] run scoreboard players set @s ani_ram 4

tag @e[tag=ani_sel_as] remove ani_sel_as