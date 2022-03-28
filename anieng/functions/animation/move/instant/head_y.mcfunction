# @s: ani_act
# input: #value
# manipulates: Pose.Head.Y
# do: Set armorstand tile instant to #value
# return: void

# head_y = head_y_s = #value
scoreboard players operation @s ani_head_y_s = #value ani_ram
scoreboard players operation @s ani_head_y = #value ani_ram

# if (not exists(Pose.Head)) create();
execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0f,1f,0f]}}

# Pose.Head.Y = #value
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get #value ani_ram

# clear()
scoreboard players reset #value ani_ram