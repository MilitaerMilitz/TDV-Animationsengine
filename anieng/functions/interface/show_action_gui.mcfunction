function anieng:util/find_as

execute as @e[tag=ani_sel_as,sort=nearest,limit=1] unless score @s ani_action matches 1.. run scoreboard players set @s ani_action 2
scoreboard players operation @s ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_action

tag @e[tag=ani_sel_as] remove ani_sel_as