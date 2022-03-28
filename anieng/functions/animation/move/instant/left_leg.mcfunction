# @s: ani_act
# pre: storage ani_ram is empty
# input: #x, #y, #z
# manipulates: Pose.LeftLeg
# do: Set armorstand tile x, y, z to #x, #y, #z
# return: void

# left_leg_x = left_leg_x_s = #x
scoreboard players operation @s ani_left_leg_x = #x ani_ram
scoreboard players operation @s ani_left_leg_x_s = #x ani_ram

# left_leg_y = left_leg_y_s = #y
scoreboard players operation @s ani_left_leg_y = #y ani_ram
scoreboard players operation @s ani_left_leg_y_s = #y ani_ram

# left_leg_z = left_leg_z_s = #z
scoreboard players operation @s ani_left_leg_z = #z ani_ram
scoreboard players operation @s ani_left_leg_z_s = #z ani_ram

# Pose.LeftLeg = [#x, #y, #z]
data merge storage ani_ram {data:[0.0f, 0.0f, 0.0f]}
execute store result storage ani_ram data[0] float 1 run scoreboard players get #x ani_ram
execute store result storage ani_ram data[1] float 1 run scoreboard players get #y ani_ram
execute store result storage ani_ram data[2] float 1 run scoreboard players get #z ani_ram
data modify entity @s Pose.LeftLeg set from storage ani_ram data

# clear()
data remove storage ani_ram data