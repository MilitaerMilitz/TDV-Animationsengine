function anieng:util/find_as

# pre calculation with keyframe to match amount
execute as @e[tag=ani_sel_as,limit=1] run scoreboard players operation #pre ani_ram = @s ani_selkey
scoreboard players add #pre ani_ram 1

# only increase if lower then total amount
execute if score #pre ani_ram <= @e[tag=ani_sel_as,limit=1] ani_keyam run scoreboard players operation @e[tag=ani_sel_as] ani_selkey = #pre ani_ram

# Clear
scoreboard players reset #pre ani_ram
tag @e[tag=ani_sel_as] remove ani_sel_as