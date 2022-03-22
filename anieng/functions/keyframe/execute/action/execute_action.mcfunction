# @s: ani_act
# pre: Action is loaded into Ram
# do: 
# post: 
# return:

execute store success score #ex ani_ram unless entity @e[tag=ani_sel_data] as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

execute store result score #action ani_ram run data get entity @e[tag=ani_sel_data,limit=1] data.Action.id

# [Debug score]
#tellraw @p {"score":{"name":"#ex","objective":"ani_ram"}}

# [Debug NBT Data]
tellraw @p {"nbt":"data.Action","entity":"@e[tag=ani_sel_data,limit=1]"}

execute if score #action ani_ram matches 5 run function anieng:keyframe/execute/action/execute_tmw

execute if data entity @e[tag=ani_sel_data,limit=1] data.Tee run function anieng:keyframe/execute/action/execute_tee

# clear
scoreboard players reset #action ani_ram
execute if score #ex ani_ram matches 1 run tag @e[tag=ani_sel_data] remove ani_sel_data
scoreboard players reset #ex ani_ram