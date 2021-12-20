# check if movement would arrive
scoreboard players operation @s ani_ram = @s ani_right_arm_x
scoreboard players operation @s ani_ram -= @s ani_arm_speed

# move
execute if score @s ani_ram > @s ani_rigt_arm_x_s run scoreboard players operation @s ani_right_arm_x -= @s ani_arm_speed

# set to demand score if arrived
execute if score @s ani_ram <= @s ani_rigt_arm_x_s run scoreboard players operation @s ani_right_arm_x = @s ani_rigt_arm_x_s

scoreboard players reset @s ani_ram