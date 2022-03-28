# @s: ani_act
# uses: @s ani_ram
# do: Calculate armorstand tile one step into negative direction
# return: void

# arrived = ...
scoreboard players operation @s ani_ram = @s ani_head_x
scoreboard players operation @s ani_ram -= @s ani_hdbo_speed

# if (not arrived) move()
execute if score @s ani_ram > @s ani_head_x_s run scoreboard players operation @s ani_head_x -= @s ani_hdbo_speed

# if (arrived) head_x_s = arrived.score
execute if score @s ani_ram <= @s ani_head_x_s run scoreboard players operation @s ani_head_x = @s ani_head_x_s

# clear()
scoreboard players reset @s ani_ram