execute if score @s ani_ram matches 5 run function anieng:interface/av/tmw/reloc_action

function anieng:util/find_as

scoreboard players set @e[tag=ani_sel_as] ani_action 2
scoreboard players set @s ani_ram 2

tag @e[tag=ani_sel_as] remove ani_sel_as