# kills animation Armorstand with data marker

function anieng:util/find_as
execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

kill @e[tag=ani_sel_as]
kill @e[tag=ani_sel_data]

scoreboard players set @s ani_ram 1

tag @e[tag=ani_sel_data] remove ani_sel_data
tag @e[tag=ani_sel_as] remove ani_sel_as