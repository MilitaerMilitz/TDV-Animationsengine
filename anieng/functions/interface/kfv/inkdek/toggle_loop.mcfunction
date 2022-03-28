# @s: @ip
# pre: 
# do: 
# return: void

function anieng:util/find_as

execute store success score #pre ani_ram if entity @e[tag=ani_sel_as,tag=ani_loop]

execute if score #pre ani_ram matches 0 run tag @e[tag=ani_sel_as] add ani_loop
execute if score #pre ani_ram matches 1 run tag @e[tag=ani_sel_as] remove ani_loop

# clear()
scoreboard players reset #pre ani_ram