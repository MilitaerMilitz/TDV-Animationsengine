# @s: @ip
# do: Makes saved action undone. And Resets Situation to begin of Keyframe
# return: void

# payload, refresh shown gui page
function anieng:util/find_as
scoreboard players set @e[tag=ani_sel_as] ani_action 310
scoreboard players set @s ani_ram 310
execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

# reset Time in Tiks
execute store result score @e[tag=ani_sel_as,limit=1] ani_time_walk run data get entity @e[tag=ani_sel_data,limit=1] data.Action.tit

# Resets Situation to begin of keyframe
execute as @e[tag=ani_sel_data,limit=1] at @s run function anieng:interface/av/util/reloc_general

# Clear
tag @e[tag=ani_sel_as,tag=ani_walk] add ani_walk_end
tag @e[tag=ani_sel_as,tag=ani_walk] add ani_walk_stop
tag @e[tag=ani_sel_as,tag=ani_walk] remove ani_walk_back
tag @e[tag=ani_sel_data] remove ani_sel_data
tag @e[tag=ani_sel_as] remove ani_sel_as