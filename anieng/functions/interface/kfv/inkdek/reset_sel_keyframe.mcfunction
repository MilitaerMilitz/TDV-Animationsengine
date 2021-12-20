function anieng:util/find_as

# only increase if lower then total amount
execute as @e[tag=ani_sel_as] if score @s ani_keyam matches 1.. run scoreboard players set @s ani_selkey 1

# Clear
tag @e[tag=ani_sel_as] remove ani_sel_as