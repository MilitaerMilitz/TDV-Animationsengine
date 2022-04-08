function anieng:util/find_as
execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

# check for unsaved actions
function anieng:interface/kfv/inkdek/api/check_unsaved_actions
execute if score #saved ani_ram matches 1 run function anieng:interface/kfv/inkdek/api/check_action_running

# calculated #create predicate
execute store success score #create ani_ram if score #saved ani_ram matches 1 if score #running ani_ram matches 0 if score @e[tag=ani_sel_as,limit=1] ani_selkey > @e[tag=ani_sel_as,limit=1] ani_keyam

# create keyframe
execute if score #create ani_ram matches 1 as @e[tag=ani_sel_as] at @s run function anieng:keyframe/create_keyframe

# save keyframe
execute if score #create ani_ram matches 0 as @e[tag=ani_sel_data] at @s run function anieng:interface/kfv/inkdek/save

# clear()
scoreboard players reset #inkam ani_ram
scoreboard players reset #create ani_ram
scoreboard players reset #saved ani_ram
scoreboard players reset #running ani_ram
tag @e[tag=ani_sel_as] remove ani_sel_as
tag @e[tag=ani_sel_data] remove ani_sel_data