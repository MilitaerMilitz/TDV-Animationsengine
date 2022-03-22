function anieng:util/find_as

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:util/find_data

# only increase if lower then total amount
execute as @e[tag=ani_sel_as] if score @s ani_keyam matches 1.. run scoreboard players set @s ani_selkey 1
execute as @e[tag=ani_sel_data] if score @e[tag=ani_sel_as,limit=1] ani_keyam matches 1.. run function anieng:keyframe/load_keyframe

# Clear
tag @e[tag=ani_sel_as] remove ani_sel_as
tag @e[tag=ani_sel_data] remove ani_sel_data