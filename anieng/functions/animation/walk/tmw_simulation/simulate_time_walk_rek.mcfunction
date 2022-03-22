# <help function>
# @s: ani_tmp marker

# rotate()
function anieng:animation/move/rotate

# if (tbw):
#   walk_pos()
# else:
#   walk_neg()
execute if score #tbw ani_ram matches 1 run tag @s add ani_walk_back
function anieng:animation/walk/walk_pos

# #tit--
scoreboard players remove #tit ani_ram 1

# while (#tit > 0): 
execute if score #tit ani_ram matches 1.. at @s run function anieng:animation/walk/tmw_simulation/simulate_time_walk_rek