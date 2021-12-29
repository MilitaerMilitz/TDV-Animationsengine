# call as animation Armorstand

execute unless entity @e[tag=ani_sel_data] as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

execute store result score #action ani_ram run data get entity @e[tag=ani_sel_data,limit=1] data.Action.id

execute if score #action ani_ram matches 5 run function anieng:keyframe/execute/action/execute_tmw

execute if data entity @e[tag=ani_sel_data,limit=1] data.Tee run function anieng:keyframe/execute/action/execute_tee

scoreboard players reset #action ani_ram
tag @e[tag=ani_sel_data] remove ani_sel_data