function anieng:util/find_as

execute at @e[tag=ani_sel_as,sort=nearest,limit=1] positioned ~ ~0.5 ~ run teleport @s ~ ~ ~

tag @e[tag=ani_sel_as] remove ani_sel_as