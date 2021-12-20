function anieng:util/find_as
execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

function anieng:interface/kfv/check_unsaved_actions
execute if score #saved ani_ram matches 1 run function anieng:interface/kfv/check_action_running

# build keyframe
execute if score #saved ani_ram matches 1 if score #running ani_ram matches 0 as @e[tag=ani_sel_data] at @s run function anieng:keyframe/create_keyframe

# clear
scoreboard players reset #saved ani_ram
scoreboard players reset #running ani_ram
tag @e[tag=ani_sel_as] remove ani_sel_as
tag @e[tag=ani_sel_data] remove ani_sel_data