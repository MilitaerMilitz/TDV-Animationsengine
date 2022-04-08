# @s: ani_act
# do: Relocate and unselect action
# return: void

# if (saved()) relocate()
execute if score @s ani_ram matches 321 run function anieng:interface/av/trw/sel/reloc_action

# sel_as = ...
function anieng:util/find_as

# unselect()
scoreboard players set @e[tag=ani_sel_as,limit=1] ani_action 300
scoreboard players set @s ani_ram 300

# clearData()
scoreboard players set @e[tag=ani_sel_as,limit=1] ani_walk_tbw 0
scoreboard players set @e[tag=ani_sel_as,limit=1] ani_walk_narm 1
scoreboard players set @e[tag=ani_sel_as,limit=1] ani_walk_ntep 1

# clear()
tag @e[tag=ani_sel_as] remove ani_sel_as