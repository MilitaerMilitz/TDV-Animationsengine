# @s: ani_act
# uses: @s ani_ram
# do: Calculate armorstand tile one step into positive direction
# return: void

# arrived = ...
scoreboard players operation @s ani_ram = @s ani_left_leg_x
scoreboard players operation @s ani_ram += @s ani_leg_speed

# if (not arrived) move()
execute if score @s ani_ram < @s ani_left_leg_x_s run scoreboard players operation @s ani_left_leg_x += @s ani_leg_speed

# if (arrived) left_leg_x_s = arrived.score
execute if score @s ani_ram >= @s ani_left_leg_x_s run scoreboard players operation @s ani_left_leg_x = @s ani_left_leg_x_s

# clear()
scoreboard players reset @s ani_ram