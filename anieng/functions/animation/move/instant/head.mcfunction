# @s: ani_act
# pre: storage ani_ram is empty
# input: #x, #y, #z
# manipulates: Pose.Head
# do: Set armorstand tile x, y, z to #x, #y, #z
# return: void

# head_x = head_x_s = #x
scoreboard players operation @s ani_head_x = #x ani_ram
scoreboard players operation @s ani_head_x_s = #x ani_ram

# head_y = head_y_s = #y
scoreboard players operation @s ani_head_y = #y ani_ram
scoreboard players operation @s ani_head_y_s = #y ani_ram

# head_z = head_z_s = #z
scoreboard players operation @s ani_head_z = #z ani_ram
scoreboard players operation @s ani_head_z_s = #z ani_ram

# Pose.Head = [#x, #y, #z]
data merge storage ani_ram {data:[0.0f, 0.0f, 0.0f]}
execute store result storage ani_ram data[0] float 1 run scoreboard players get #x ani_ram
execute store result storage ani_ram data[1] float 1 run scoreboard players get #y ani_ram
execute store result storage ani_ram data[2] float 1 run scoreboard players get #z ani_ram
data modify entity @s Pose.Head set from storage ani_ram data

# clear()
data remove storage ani_ram data