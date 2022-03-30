# @s: ani_act
# manipulates: @s Rotation.X, @s ani_rot_s, @s ani_rot
# do: Modulos @s ani_rot_s and @s ani_rot and sets Rotation.X = @s ani_rot
# return: void

# rot_s %= 360
scoreboard players operation @s ani_rot_s %= 360 numbers

# rot %= 360
scoreboard players operation @s ani_rot %= 360 numbers

# Rotation.X = rot
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ani_rot