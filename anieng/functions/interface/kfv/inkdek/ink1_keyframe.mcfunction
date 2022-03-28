function anieng:util/find_as

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:util/find_data

# pre calculation with keyframe to match amount
scoreboard players operation #pre ani_ram = @e[tag=ani_sel_as,limit=1] ani_selkey

# only increase if lower then total amount
execute if score #pre ani_ram <= @e[tag=ani_sel_as,limit=1] ani_keyam run scoreboard players add @e[tag=ani_sel_as] ani_selkey 1
execute if score #pre ani_ram < @e[tag=ani_sel_as,limit=1] ani_keyam as @e[tag=ani_sel_data,limit=1] at @s run function anieng:keyframe/load_keyframe
execute if score #pre ani_ram = @e[tag=ani_sel_as,limit=1] ani_keyam as @e[tag=ani_sel_data,limit=1] at @s run function anieng:keyframe/util/prepare_new_keyframe

# clear()
scoreboard players reset #pre ani_ram
tag @e[tag=ani_sel_as] remove ani_sel_as
tag @e[tag=ani_sel_data] remove ani_sel_data