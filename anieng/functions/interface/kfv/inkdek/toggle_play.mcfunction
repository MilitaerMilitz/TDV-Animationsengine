# @s: @ip
# pre: 
# do: 
# return: void

function anieng:util/find_as

execute store success score #pre ani_ram if entity @e[tag=ani_sel_as,tag=ani_play]

execute as @e[tag=ani_sel_as] if entity @s[tag=!ani_pause] if score #pre ani_ram matches 0 run tag @s add ani_play
execute as @e[tag=ani_sel_as] if entity @s[tag=!ani_pause] if score #pre ani_ram matches 0 run execute if entity @s[tag=ani_play,scores={ani_selkey=1}] run scoreboard players set @s ani_sel_key 0
execute as @e[tag=ani_sel_as] if entity @s[tag=!ani_pause] if score #pre ani_ram matches 1 run tag @s remove ani_play
execute as @e[tag=ani_sel_as] if entity @s[tag=ani_pause] if score #pre ani_ram matches 1 run tag @s remove ani_pause

# clear
scoreboard players reset #pre ani_ram