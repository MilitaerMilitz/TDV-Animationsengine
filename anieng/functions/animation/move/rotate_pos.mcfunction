# check if movement would arrive
scoreboard players operation @s ani_ram = @s ani_rot
scoreboard players operation @s ani_ram += @s ani_rot_speed

# move
execute if score @s ani_ram < @s ani_rot_s run scoreboard players operation @s ani_rot += @s ani_rot_speed

# set to demand score if arrived
execute if score @s ani_ram >= @s ani_rot_s run scoreboard players operation @s ani_rot = @s ani_rot_s

scoreboard players reset @s ani_ram