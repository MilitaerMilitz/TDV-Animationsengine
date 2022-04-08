# @s: @ip
# do: Saves action into entity and let it execute
# return: @e[tag=ani_sel_data] data.Action := Action

# payload, refresh shown gui page
function anieng:util/find_as
scoreboard players set @e[tag=ani_sel_as] ani_action 311
scoreboard players set @s ani_ram 311
execute as @e[tag=ani_sel_as] at @s run function anieng:util/find_data

# construct Action
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:interface/av/tmw/sel/construct_nbt
data modify entity @e[tag=ani_sel_data,limit=1] data.Action set from storage ani_out data
data remove storage ani_out data

# execute action
execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:interface/av/util/save_general

# clear()
tag @e[tag=ani_sel_data] remove ani_sel_data
tag @e[tag=ani_sel_as] remove ani_sel_as