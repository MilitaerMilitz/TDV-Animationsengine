# @s: ani_act
# pre: storage ani_ram is empty
# input: #x, #y, #z
# manipulates: Pose.RightLeg
# do: Set armorstand tile x, y, z to #x, #y, #z
# return: void

# right_leg_x = right_leg_x_s = #x
scoreboard players operation @s ani_right_leg_x = #x ani_ram
scoreboard players operation @s ani_rigt_leg_x_s = #x ani_ram

# right_leg_y = right_leg_y_s = #y
scoreboard players operation @s ani_right_leg_y = #y ani_ram
scoreboard players operation @s ani_rigt_leg_y_s = #y ani_ram

# right_leg_z = right_leg_z_s = #z
scoreboard players operation @s ani_right_leg_z = #z ani_ram
scoreboard players operation @s ani_rigt_leg_z_s = #z ani_ram

# Pose.RightLeg = [#x, #y, #z]
data merge storage ani_ram {data:[0.0f, 0.0f, 0.0f]}
execute store result storage ani_ram data[0] float 1 run scoreboard players get #x ani_ram
execute store result storage ani_ram data[1] float 1 run scoreboard players get #y ani_ram
execute store result storage ani_ram data[2] float 1 run scoreboard players get #z ani_ram
data modify entity @s Pose.RightLeg set from storage ani_ram data

# clear()
data remove storage ani_ram data