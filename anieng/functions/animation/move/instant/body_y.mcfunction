# @s: ani_act
# input: #value
# do: Set armorstand tile instant to #value
# return: void

# body_y = body_y_s = #value
scoreboard players operation @s ani_body_y_s = #value ani_ram
scoreboard players operation @s ani_body_y = #value ani_ram

# if (not exists(Pose.Body)) create();
execute unless data entity @s Pose.Body run data merge entity @s {Pose:{Body:[0f,1f,0f]}}

# Pose.Body.Y = #value
execute store result entity @s Pose.Body[1] float 1 run scoreboard players get #value ani_ram

# clear()
scoreboard players reset #value ani_ram