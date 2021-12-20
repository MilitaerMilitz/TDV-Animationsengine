execute if entity @s[tag=ani_walk_back] run scoreboard players set #pre ani_ram 1
execute unless entity @s[tag=ani_walk_back] run scoreboard players set #pre ani_ram 0

execute if score #pre ani_ram matches 0 unless entity @s[tag=ani_walk_back] run tag @s add ani_walk_back
execute if score #pre ani_ram matches 1 if entity @s[tag=ani_walk_back] run tag @s remove ani_walk_back