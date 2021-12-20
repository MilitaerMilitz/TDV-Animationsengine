# call as ani_data marker

# reset Pose
data modify entity @e[tag=ani_sel_as,limit=1] Pose set from entity @s data.StartData.Pose

execute store result score @e[tag=ani_sel_as,limit=1] ani_head_x_s run data get entity @s data.StartData.Pose.Head[0]
execute store result score @e[tag=ani_sel_as,limit=1] ani_head_y_s run data get entity @s data.StartData.Pose.Head[1]
execute store result score @e[tag=ani_sel_as,limit=1] ani_head_z_s run data get entity @s data.StartData.Pose.Head[2]

execute store result score @e[tag=ani_sel_as,limit=1] ani_body_x_s run data get entity @s data.StartData.Pose.Body[0]
execute store result score @e[tag=ani_sel_as,limit=1] ani_body_y_s run data get entity @s data.StartData.Pose.Body[1]
execute store result score @e[tag=ani_sel_as,limit=1] ani_body_z_s run data get entity @s data.StartData.Pose.Body[2]

execute store result score @e[tag=ani_sel_as,limit=1] ani_left_arm_x_s run data get entity @s data.StartData.Pose.LeftArm[0]
execute store result score @e[tag=ani_sel_as,limit=1] ani_left_arm_y_s run data get entity @s data.StartData.Pose.LeftArm[1]
execute store result score @e[tag=ani_sel_as,limit=1] ani_left_arm_z_s run data get entity @s data.StartData.Pose.LeftArm[2]

execute store result score @e[tag=ani_sel_as,limit=1] ani_rigt_arm_x_s run data get entity @s data.StartData.Pose.RightArm[0]
execute store result score @e[tag=ani_sel_as,limit=1] ani_rigt_arm_y_s run data get entity @s data.StartData.Pose.RightArm[1]
execute store result score @e[tag=ani_sel_as,limit=1] ani_rigt_arm_z_s run data get entity @s data.StartData.Pose.RightArm[2]

execute store result score @e[tag=ani_sel_as,limit=1] ani_left_leg_x_s run data get entity @s data.StartData.Pose.LeftLeg[0]
execute store result score @e[tag=ani_sel_as,limit=1] ani_left_leg_y_s run data get entity @s data.StartData.Pose.LeftLeg[1]
execute store result score @e[tag=ani_sel_as,limit=1] ani_left_leg_z_s run data get entity @s data.StartData.Pose.LeftLeg[2]

execute store result score @e[tag=ani_sel_as,limit=1] ani_rigt_leg_x_s run data get entity @s data.StartData.Pose.RightLeg[0]
execute store result score @e[tag=ani_sel_as,limit=1] ani_rigt_leg_y_s run data get entity @s data.StartData.Pose.RightLeg[1]
execute store result score @e[tag=ani_sel_as,limit=1] ani_rigt_leg_z_s run data get entity @s data.StartData.Pose.RightLeg[2]

execute store result score @e[tag=ani_sel_as,limit=1] ani_rot_speed run data get entity @s data.StartData.Pose.Speed.Rotation
execute store result score @e[tag=ani_sel_as,limit=1] ani_hdbo_speed run data get entity @s data.StartData.Pose.Speed.Hdbo
execute store result score @e[tag=ani_sel_as,limit=1] ani_arm_speed run data get entity @s data.StartData.Pose.Speed.Arm
execute store result score @e[tag=ani_sel_as,limit=1] ani_leg_speed run data get entity @s data.StartData.Pose.Speed.Leg

# reset Rotation
execute store result score @e[tag=ani_sel_as,limit=1] ani_rot_s run data get entity @s data.StartData.Pose.Rotation

execute as @e[tag=ani_sel_as,limit=1] at @s run function anieng:util/soll_to_ist

# reset Position
data modify entity @e[tag=ani_sel_as,limit=1] Pos set from entity @s data.StartData.Pos