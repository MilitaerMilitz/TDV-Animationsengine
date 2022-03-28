# @s: ani_act
# uses: @s ani_ram
# do: Calculate armorstand rotation one step into positiove direction
# return: void

# arrived = ...
scoreboard players operation @s ani_ram = @s ani_rot
scoreboard players operation @s ani_ram += @s ani_rot_speed

# if (not arrived) move()
execute if score @s ani_ram < @s ani_rot_s run scoreboard players operation @s ani_rot += @s ani_rot_speed

# if (arrived) rot_s = arrived.score
execute if score @s ani_ram >= @s ani_rot_s run scoreboard players operation @s ani_rot = @s ani_rot_s

# clear()
scoreboard players reset @s ani_ram