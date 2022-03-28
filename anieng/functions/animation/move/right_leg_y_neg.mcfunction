# @s: ani_act
# uses: @s ani_ram
# do: Calculate armorstand tile one step into negative direction
# return: void

# arrived = ...
scoreboard players operation @s ani_ram = @s ani_right_leg_y
scoreboard players operation @s ani_ram -= @s ani_leg_speed

# if (not arrived) move()
execute if score @s ani_ram > @s ani_rigt_leg_y_s run scoreboard players operation @s ani_right_leg_y -= @s ani_leg_speed

# if (arrived) right_leg_y_s = arrived.score
execute if score @s ani_ram <= @s ani_rigt_leg_y_s run scoreboard players operation @s ani_right_leg_y = @s ani_rigt_leg_y_s

# clear()
scoreboard players reset @s ani_ram