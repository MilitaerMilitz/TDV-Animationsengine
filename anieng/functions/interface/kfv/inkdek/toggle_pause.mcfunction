# @s: @ip
# pre: 
# do: 
# return: void

function anieng:util/find_as

execute store success score #pre ani_ram if entity @e[tag=ani_sel_as,tag=ani_pause]

execute as @e[tag=ani_sel_as] if entity @s[tag=ani_play] if score #pre ani_ram matches 0 run tag @s add ani_pause
execute as @e[tag=ani_sel_as] if entity @s[tag=ani_play] if score #pre ani_ram matches 1 run tag @s remove ani_pause

# clear()
scoreboard players reset #pre ani_ram