# call as animation Armorstand
# loads pose of Armorstand containing in ani_in: data.Pose
# store in score #animate = 1 if startdata have to be animated, if undefined startdata will apply instantly

execute unless score #animate ani_ram matches -2147483648.. run scoreboard players set #animate ani_ram 0

# reset Pose
execute if score #animate ani_ram matches 0 run data modify entity @s Rotation[0] set from storage ani_in data.Pose.Rotation
execute if score #animate ani_ram matches 0 run data modify entity @s Pose.Head set from storage ani_in data.Pose.Head
execute if score #animate ani_ram matches 0 run data modify entity @s Pose.Body set from storage ani_in data.Pose.Body
execute if score #animate ani_ram matches 0 run data modify entity @s Pose.LeftArm set from storage ani_in data.Pose.LeftArm
execute if score #animate ani_ram matches 0 run data modify entity @s Pose.RightArm set from storage ani_in data.Pose.RightArm
execute if score #animate ani_ram matches 0 run data modify entity @s Pose.LeftLeg set from storage ani_in data.Pose.LeftLeg
execute if score #animate ani_ram matches 0 run data modify entity @s Pose.RightLeg set from storage ani_in data.Pose.RightLeg

#data modify entity @s Pose set from storage ani_in data.Pose

# reset Variables
execute store result score @s ani_rot_s run data get storage ani_in data.Pose.Rotation

execute store result score @s ani_head_x_s run data get storage ani_in data.Pose.Head[0]
execute store result score @s ani_head_y_s run data get storage ani_in data.Pose.Head[1]
execute store result score @s ani_head_z_s run data get storage ani_in data.Pose.Head[2]

execute store result score @s ani_body_x_s run data get storage ani_in data.Pose.Body[0]
execute store result score @s ani_body_y_s run data get storage ani_in data.Pose.Body[1]
execute store result score @s ani_body_z_s run data get storage ani_in data.Pose.Body[2]

execute store result score @s ani_left_arm_x_s run data get storage ani_in data.Pose.LeftArm[0]
execute store result score @s ani_left_arm_y_s run data get storage ani_in data.Pose.LeftArm[1]
execute store result score @s ani_left_arm_z_s run data get storage ani_in data.Pose.LeftArm[2]

execute store result score @s ani_rigt_arm_x_s run data get storage ani_in data.Pose.RightArm[0]
execute store result score @s ani_rigt_arm_y_s run data get storage ani_in data.Pose.RightArm[1]
execute store result score @s ani_rigt_arm_z_s run data get storage ani_in data.Pose.RightArm[2]

execute store result score @s ani_left_leg_x_s run data get storage ani_in data.Pose.LeftLeg[0]
execute store result score @s ani_left_leg_y_s run data get storage ani_in data.Pose.LeftLeg[1]
execute store result score @s ani_left_leg_z_s run data get storage ani_in data.Pose.LeftLeg[2]

execute store result score @s ani_rigt_leg_x_s run data get storage ani_in data.Pose.RightLeg[0]
execute store result score @s ani_rigt_leg_y_s run data get storage ani_in data.Pose.RightLeg[1]
execute store result score @s ani_rigt_leg_z_s run data get storage ani_in data.Pose.RightLeg[2]

execute store result score @s ani_rot_speed run data get storage ani_in data.Pose.Speed.Rotation
execute store result score @s ani_hdbo_speed run data get storage ani_in data.Pose.Speed.Hdbo
execute store result score @s ani_arm_speed run data get storage ani_in data.Pose.Speed.Arm
execute store result score @s ani_leg_speed run data get storage ani_in data.Pose.Speed.Leg

execute if score #animate ani_ram matches 0 run function anieng:util/soll_to_ist

# clear
scoreboard players reset #animate ani_ram
data remove storage ani_in data