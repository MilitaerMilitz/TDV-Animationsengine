function anieng:util/find_as

execute store result score @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_x run data get entity @s Pos[0]
execute store result score @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_y run data get entity @s Pos[1]
execute store result score @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_z run data get entity @s Pos[2]

tag @e[tag=ani_sel_as] remove ani_sel_as