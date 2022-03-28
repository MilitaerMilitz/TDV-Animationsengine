function anieng:util/find_as

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:util/find_data

# pre calculation with keyframe to match amount
execute as @e[tag=ani_sel_as,limit=1] run scoreboard players operation #pre ani_ram = @s ani_selkey
scoreboard players operation #pre ani_ram -= @s ani_if_summand

# only increase if lower then total amount
execute if score #pre ani_ram matches 1.. run scoreboard players operation @e[tag=ani_sel_as] ani_selkey = #pre ani_ram
execute if score #pre ani_ram matches 1.. as @e[tag=ani_sel_data,limit=1] at @s run function anieng:keyframe/load_keyframe

# clear()
scoreboard players reset #pre ani_ram
tag @e[tag=ani_sel_as] remove ani_sel_as
tag @e[tag=ani_sel_data] remove ani_sel_data