function anieng:util/find_as

scoreboard players set @e[tag=ani_sel_as] ani_action 4
scoreboard players set @s ani_ram 4

execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_data
# reset Time in Tiks
execute store result score @e[tag=ani_sel_as,limit=1] ani_time_walk run data get entity @e[tag=ani_sel_data,limit=1] data.Action.tit

execute as @e[tag=ani_sel_data,limit=1] at @s run function anieng:interface/av/util/reloc_general

# Clear
tag @e[tag=ani_sel_as] add ani_walk_end
tag @e[tag=ani_sel_as] add ani_walk_stop
tag @e[tag=ani_sel_as] remove ani_walk_back
tag @e[tag=ani_sel_data] remove ani_sel_data
tag @e[tag=ani_sel_as] remove ani_sel_as