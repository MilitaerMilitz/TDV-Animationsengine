function anieng:util/find_as

execute as @e[tag=ani_sel_as,type=armor_stand] store success score #pre ani_ram if entity @s[tag=ani_glow]
execute as @e[tag=ani_sel_as,type=armor_stand] if score #pre ani_ram matches 0 run tag @s add ani_glow
execute as @e[tag=ani_sel_as,type=armor_stand] if score #pre ani_ram matches 1 run tag @s remove ani_glow
execute as @e[tag=ani_sel_as,type=armor_stand] if score #pre ani_ram matches 1 run effect clear @s glowing

scoreboard players reset #pre ani_ram
tag @e[tag=ani_sel_as] remove ani_sel_as