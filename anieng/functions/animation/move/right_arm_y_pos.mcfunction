# @s: ani_act
# uses: @s ani_ram
# do: Calculate armorstand tile one step into positive direction
# return: void

# arrived = ...
scoreboard players operation @s ani_ram = @s ani_right_arm_y
scoreboard players operation @s ani_ram += @s ani_arm_speed

# if (not arrived) move()
execute if score @s ani_ram < @s ani_rigt_arm_y_s run scoreboard players operation @s ani_right_arm_y += @s ani_arm_speed

# if (arrived) right_arm_x_s = arrived.score
execute if score @s ani_ram >= @s ani_rigt_arm_y_s run scoreboard players operation @s ani_right_arm_y = @s ani_rigt_arm_y_s

# clear()
scoreboard players reset @s ani_ram