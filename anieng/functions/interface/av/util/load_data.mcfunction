function anieng:util/find_as

scoreboard players operation @s ani_ram = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_action

execute if score @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_x matches -2147483648.. run scoreboard players operation @s ani_ptee_x = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_x
execute if score @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_y matches -2147483648.. run scoreboard players operation @s ani_ptee_y = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_y
execute if score @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_z matches -2147483648.. run scoreboard players operation @s ani_ptee_z = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tee_z

scoreboard players operation @s ani_pwalk_speed = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_walk_speed
scoreboard players operation @s ani_ptbw = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_tbw
scoreboard players operation @s ani_ptime_walk = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_time_walk
scoreboard players operation @s ani_pnarm = @e[tag=ani_sel_as,sort=nearest,limit=1] ani_narm

tag @e[tag=ani_sel_as] remove ani_sel_as