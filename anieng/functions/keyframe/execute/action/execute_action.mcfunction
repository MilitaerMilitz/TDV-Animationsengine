# @s: ani_act
# pre: Action is loaded into Ram
# do: Executes loaded Action.
# return: void

# [Debug score]
#tellraw @p [{"score":{"name":"@s","objective":"ani_selkey"}},{"text": " : "},{"nbt":"data.Action","entity":"@e[tag=ani_sel_data,limit=1]"}]

# dataExists = ...
execute store success score #ex ani_ram unless entity @e[tag=ani_sel_data] as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

# action = ...
execute store result score #action ani_ram run data get entity @e[tag=ani_sel_data,limit=1] data.Action.id

# if (action == tmw) executeTmw()
execute if score #action ani_ram matches 311 run function anieng:keyframe/execute/action/execute_tmw

# if (action.tee) executeTee()
execute if data entity @e[tag=ani_sel_data,limit=1] data.Tee run function anieng:keyframe/execute/action/execute_tee

## clear()
scoreboard players reset #action ani_ram

# if (dataExists) removeData(); dataExists = null;
execute if score #ex ani_ram matches 1 run tag @e[tag=ani_sel_data] remove ani_sel_data
scoreboard players reset #ex ani_ram