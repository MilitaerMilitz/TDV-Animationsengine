execute if entity @s[tag=ani_walk] run scoreboard players set #pre ani_ram 1
execute unless entity @s[tag=ani_walk] run scoreboard players set #pre ani_ram 0

execute if score #pre ani_ram matches 0 unless entity @s[tag=ani_walk] run tag @s add ani_walk_init
execute if score #pre ani_ram matches 1 if entity @s[tag=ani_walk] run tag @s add ani_walk_end

scoreboard players reset #pre ani_ram