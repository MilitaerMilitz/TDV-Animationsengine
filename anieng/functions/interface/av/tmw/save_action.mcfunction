function anieng:util/find_as

scoreboard players set @e[tag=ani_sel_as] ani_action 5
scoreboard players set @s ani_ram 5

execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

# store general data
execute as @e[tag=ani_sel_data,limit=1] at @s run function anieng:interface/av/util/save_general

# store time walk data
execute store result entity @e[tag=ani_sel_data,limit=1] data.Action.wspeed short 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_walk_speed
execute store result entity @e[tag=ani_sel_data,limit=1] data.Action.tbw byte 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_tbw
execute store result entity @e[tag=ani_sel_data,limit=1] data.Action.tit int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_time_walk
execute store result entity @e[tag=ani_sel_data,limit=1] data.Action.narm byte 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_narm

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:keyframe/execute/action/execute_action

# clear
tag @e[tag=ani_sel_data] remove ani_sel_data
tag @e[tag=ani_sel_as] remove ani_sel_as