# @s: @ip
# do: Select rotation walk
# return: void

# sel_as = ...
function anieng:util/find_as

# if (sel_as.exists()) selectAction()
execute if entity @e[tag=ani_sel_as] run scoreboard players set @e[tag=ani_sel_as] ani_action 340
execute if entity @e[tag=ani_sel_as] run scoreboard players set @s ani_ram 340

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as