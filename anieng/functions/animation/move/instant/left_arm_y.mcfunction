# call as animation Armorstand
# use #value to input value
# set armorstand tile instant to specific value

scoreboard players operation @s ani_left_arm_y_s = #value ani_ram
scoreboard players operation @s ani_left_arm_y = #value ani_ram

execute unless data entity @s Pose.LeftArm run data merge entity @s {Pose:{LeftArm:[0f,1f,0f]}}

execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get #value ani_ram

# clear
scoreboard players reset #value ani_ram