scoreboard players operation #pre ani_ram = @s ani_if_summand

execute if score #pre ani_ram matches 50 run scoreboard players set @s ani_if_summand 20
execute if score #pre ani_ram matches 1 run scoreboard players set @s ani_if_summand 50
execute if score #pre ani_ram matches 2 run scoreboard players set @s ani_if_summand 1
execute if score #pre ani_ram matches 5 run scoreboard players set @s ani_if_summand 2
execute if score #pre ani_ram matches 10 run scoreboard players set @s ani_if_summand 5
execute if score #pre ani_ram matches 20 run scoreboard players set @s ani_if_summand 10

scoreboard players reset #pre ani_ram