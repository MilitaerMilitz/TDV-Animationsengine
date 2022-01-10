# call as animation Armorstand
# loads pose instant of Armorstand containing in ani_in: data.Pose
# delete storage ani_in

# Rotation
execute store result score #value ani_ram run data get storage ani_in data.Pose.Rotation
function anieng:animation/move/instant/rotate

# Head
execute store result score #value ani_ram run data get storage ani_in data.Pose.Head[0]
function anieng:animation/move/instant/head_x
execute store result score #value ani_ram run data get storage ani_in data.Pose.Head[1]
function anieng:animation/move/instant/head_y
execute store result score #value ani_ram run data get storage ani_in data.Pose.Head[2]
function anieng:animation/move/instant/head_z

# Body
execute store result score #value ani_ram run data get storage ani_in data.Pose.Body[0]
function anieng:animation/move/instant/body_x
execute store result score #value ani_ram run data get storage ani_in data.Pose.Body[1]
function anieng:animation/move/instant/body_y
execute store result score #value ani_ram run data get storage ani_in data.Pose.Body[2]
function anieng:animation/move/instant/body_z

# LeftArm
execute store result score #value ani_ram run data get storage ani_in data.Pose.LeftArm[0]
function anieng:animation/move/instant/left_arm_x
execute store result score #value ani_ram run data get storage ani_in data.Pose.LeftArm[1]
function anieng:animation/move/instant/left_arm_y
execute store result score #value ani_ram run data get storage ani_in data.Pose.LeftArm[2]
function anieng:animation/move/instant/left_arm_z

# RightArm
execute store result score #value ani_ram run data get storage ani_in data.Pose.RightArm[0]
function anieng:animation/move/instant/right_arm_x
execute store result score #value ani_ram run data get storage ani_in data.Pose.RightArm[1]
function anieng:animation/move/instant/right_arm_y
execute store result score #value ani_ram run data get storage ani_in data.Pose.RightArm[2]
function anieng:animation/move/instant/right_arm_z

# LeftLeg
execute store result score #value ani_ram run data get storage ani_in data.Pose.LeftLeg[0]
function anieng:animation/move/instant/left_leg_x
execute store result score #value ani_ram run data get storage ani_in data.Pose.LeftLeg[1]
function anieng:animation/move/instant/left_leg_y
execute store result score #value ani_ram run data get storage ani_in data.Pose.LeftLeg[2]
function anieng:animation/move/instant/left_leg_z

# RightLeg
execute store result score #value ani_ram run data get storage ani_in data.Pose.RightLeg[0]
function anieng:animation/move/instant/right_leg_x
execute store result score #value ani_ram run data get storage ani_in data.Pose.RightLeg[1]
function anieng:animation/move/instant/right_leg_y
execute store result score #value ani_ram run data get storage ani_in data.Pose.RightLeg[2]
function anieng:animation/move/instant/right_leg_z

# Speed
execute store result score @s ani_rot_speed run data get storage ani_in data.Pose.Speed.Rotation
execute store result score @s ani_hdbo_speed run data get storage ani_in data.Pose.Speed.Hdbo
execute store result score @s ani_arm_speed run data get storage ani_in data.Pose.Speed.Arm
execute store result score @s ani_leg_speed run data get storage ani_in data.Pose.Speed.Leg

# clear
data remove storage ani_in data