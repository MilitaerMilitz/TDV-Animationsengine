# check if movement would arrive
scoreboard players operation @s ani_ram = @s ani_left_arm_z
scoreboard players operation @s ani_ram += @s ani_arm_speed

# move
execute if score @s ani_ram < @s ani_left_arm_z_s run scoreboard players operation @s ani_left_arm_z += @s ani_arm_speed

# set to demand score if arrived
execute if score @s ani_ram >= @s ani_left_arm_z_s run scoreboard players operation @s ani_left_arm_z = @s ani_left_arm_z_s

scoreboard players reset @s ani_ram