# check if movement would arrive
scoreboard players operation @s ani_ram = @s ani_left_arm_y
scoreboard players operation @s ani_ram -= @s ani_arm_speed

# move
execute if score @s ani_ram > @s ani_left_arm_y_s run scoreboard players operation @s ani_left_arm_y -= @s ani_arm_speed

# set to demand score if arrived
execute if score @s ani_ram <= @s ani_left_arm_y_s run scoreboard players operation @s ani_left_arm_y = @s ani_left_arm_y_s

scoreboard players reset @s ani_ram