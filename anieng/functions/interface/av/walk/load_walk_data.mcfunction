function anieng:util/find_as

#scoreboard players operation @s ani_ram = @e[tag=ani_sel_as,limit=1] ani_action

scoreboard players operation @s ani_walk_speed = @e[tag=ani_sel_as,limit=1] ani_walk_speed
scoreboard players operation @s ani_walk_tbw = @e[tag=ani_sel_as,limit=1] ani_walk_tbw
scoreboard players operation @s ani_time_walk = @e[tag=ani_sel_as,limit=1] ani_time_walk
scoreboard players operation @s ani_walk_narm = @e[tag=ani_sel_as,limit=1] ani_walk_narm
scoreboard players operation @s ani_walk_ntep = @e[tag=ani_sel_as,limit=1] ani_walk_ntep
scoreboard players operation @s ani_arwalk_rot = @e[tag=ani_sel_as,limit=1] ani_arwalk_rot

scoreboard players operation @s ani_walk_tbw_x = @e[tag=ani_sel_as,limit=1] ani_walk_tbw_x
scoreboard players operation @s ani_walk_tbw_y = @e[tag=ani_sel_as,limit=1] ani_walk_tbw_y
scoreboard players operation @s ani_walk_tbw_z = @e[tag=ani_sel_as,limit=1] ani_walk_tbw_z


tag @e[tag=ani_sel_as] remove ani_sel_as

