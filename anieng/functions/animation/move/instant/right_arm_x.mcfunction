# call as animation Armorstand
# use #value to input value
# set armorstand tile instant to specific value

scoreboard players operation @s ani_rigt_arm_x_s = #value ani_ram
scoreboard players operation @s ani_right_arm_x = #value ani_ram

execute unless data entity @s Pose.RightArm run data merge entity @s {Pose:{RightArm:[1f,0f,0f]}}

execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get #value ani_ram

# clear
scoreboard players reset #value ani_ram