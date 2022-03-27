function anieng:util/find_as

# toggle algorithm
scoreboard players operation #pre ani_ram = @e[tag=ani_sel_as,limit=1] ani_walk_narm

execute if score #pre ani_ram matches 0 run scoreboard players set @e[tag=ani_sel_as,limit=1] ani_walk_narm 1
execute if score #pre ani_ram matches 1 run scoreboard players set @e[tag=ani_sel_as,limit=1] ani_walk_narm 0

# clear
scoreboard players reset #pre ani_ram
tag @e[tag=ani_sel_as] remove ani_sel_as
