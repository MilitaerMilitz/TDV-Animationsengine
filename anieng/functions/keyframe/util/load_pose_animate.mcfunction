# call as animation Armorstand
# loads pose with Animation of Armorstand containing in ani_in: data.Pose
# delete storage ani_in

# Rotation
execute store result score @s ani_rot_s run data get storage ani_in data.Pose.Rotation

# Head
execute store result score @s ani_head_x_s run data get storage ani_in data.Pose.Head[0]
execute store result score @s ani_head_y_s run data get storage ani_in data.Pose.Head[1]
execute store result score @s ani_head_z_s run data get storage ani_in data.Pose.Head[2]

# Body
execute store result score @s ani_body_x_s run data get storage ani_in data.Pose.Body[0]
execute store result score @s ani_body_y_s run data get storage ani_in data.Pose.Body[1]
execute store result score @s ani_body_z_s run data get storage ani_in data.Pose.Body[2]

# LeftArm
execute store result score @s ani_left_arm_x_s run data get storage ani_in data.Pose.LeftArm[0]
execute store result score @s ani_left_arm_y_s run data get storage ani_in data.Pose.LeftArm[1]
execute store result score @s ani_left_arm_z_s run data get storage ani_in data.Pose.LeftArm[2]

# RightArm
execute store result score @s ani_rigt_arm_x_s run data get storage ani_in data.Pose.RightArm[0]
execute store result score @s ani_rigt_arm_y_s run data get storage ani_in data.Pose.RightArm[1]
execute store result score @s ani_rigt_arm_z_s run data get storage ani_in data.Pose.RightArm[2]

# LeftLeg
execute store result score @s ani_left_leg_x_s run data get storage ani_in data.Pose.LeftLeg[0]
execute store result score @s ani_left_leg_y_s run data get storage ani_in data.Pose.LeftLeg[1]
execute store result score @s ani_left_leg_z_s run data get storage ani_in data.Pose.LeftLeg[2]

# RightLeg
execute store result score @s ani_rigt_leg_x_s run data get storage ani_in data.Pose.RightLeg[0]
execute store result score @s ani_rigt_leg_y_s run data get storage ani_in data.Pose.RightLeg[1]
execute store result score @s ani_rigt_leg_z_s run data get storage ani_in data.Pose.RightLeg[2]

# Speed
execute store result score @s ani_rot_speed run data get storage ani_in data.Pose.Speed.Rotation
execute store result score @s ani_hdbo_speed run data get storage ani_in data.Pose.Speed.Hdbo
execute store result score @s ani_arm_speed run data get storage ani_in data.Pose.Speed.Arm
execute store result score @s ani_leg_speed run data get storage ani_in data.Pose.Speed.Leg

# clear()
data remove storage ani_in data