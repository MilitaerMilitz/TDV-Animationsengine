# @s: ani_act
# uses: @s ani_ram
# do: Calculate armorstand tile one step into negative direction
# return: void

# arrived = ...
scoreboard players operation @s ani_ram = @s ani_head_y
scoreboard players operation @s ani_ram -= @s ani_hdbo_speed

# if (not arrived) move()
execute if score @s ani_ram > @s ani_head_y_s run scoreboard players operation @s ani_head_y -= @s ani_hdbo_speed

# if (arrived) head_y_s = arrived.score
execute if score @s ani_ram <= @s ani_head_y_s run scoreboard players operation @s ani_head_y = @s ani_head_y_s

# clear()
scoreboard players reset @s ani_ram