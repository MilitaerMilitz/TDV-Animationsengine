# @s: @ip
# do: Load action score into player score to show right action gui.
# return: void

# sel_as = ...
function anieng:util/find_as

# @s ani_ram = sel_as ani_action
execute if entity @e[tag=ani_sel_as] run scoreboard players operation @s ani_ram = @e[tag=ani_sel_as,limit=1] ani_action

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as