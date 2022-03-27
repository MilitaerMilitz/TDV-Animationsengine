execute if score @s ani_ram matches 5 run function anieng:interface/av/tmw/reloc_action

function anieng:util/find_as

scoreboard players set @e[tag=ani_sel_as,limit=1] ani_action 300
scoreboard players set @s ani_ram 300

scoreboard players set @e[tag=ani_sel_as,limit=1] ani_walk_tbw 0
scoreboard players set @e[tag=ani_sel_as,limit=1] ani_walk_narm 1
scoreboard players set @e[tag=ani_sel_as,limit=1] ani_walk_ntep 1

tag @e[tag=ani_sel_as] remove ani_sel_as