# check if movement would arrive
scoreboard players operation @s ani_ram = @s ani_head_x
scoreboard players operation @s ani_ram -= @s ani_hdbo_speed

# move
execute if score @s ani_ram > @s ani_head_x_s run scoreboard players operation @s ani_head_x -= @s ani_hdbo_speed

# set to demand score if arrived
execute if score @s ani_ram <= @s ani_head_x_s run scoreboard players operation @s ani_head_x = @s ani_head_x_s

scoreboard players reset @s ani_ram