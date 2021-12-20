# call as ani_data marker

# store previous Pose
data merge entity @s {data:{StartData:{Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}}}

execute store result entity @s data.StartData.Pose.Head[0] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_head_x_s
execute store result entity @s data.StartData.Pose.Head[1] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_head_y_s
execute store result entity @s data.StartData.Pose.Head[2] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_head_z_s

execute store result entity @s data.StartData.Pose.Body[0] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_body_x_s
execute store result entity @s data.StartData.Pose.Body[1] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_body_y_s
execute store result entity @s data.StartData.Pose.Body[2] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_body_z_s

execute store result entity @s data.StartData.Pose.LeftArm[0] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_left_arm_x_s
execute store result entity @s data.StartData.Pose.LeftArm[1] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_left_arm_y_s
execute store result entity @s data.StartData.Pose.LeftArm[2] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_left_arm_z_s

execute store result entity @s data.StartData.Pose.RightArm[0] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_left_arm_x_s
execute store result entity @s data.StartData.Pose.RightArm[1] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_rigt_arm_y_s
execute store result entity @s data.StartData.Pose.RightArm[2] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_rigt_arm_z_s

execute store result entity @s data.StartData.Pose.LeftLeg[0] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_left_leg_x_s
execute store result entity @s data.StartData.Pose.LeftLeg[1] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_left_leg_y_s
execute store result entity @s data.StartData.Pose.LeftLeg[2] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_left_leg_z_s

execute store result entity @s data.StartData.Pose.RightLeg[0] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_left_leg_x_s
execute store result entity @s data.StartData.Pose.RightLeg[1] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_rigt_leg_y_s
execute store result entity @s data.StartData.Pose.RightLeg[2] float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_rigt_leg_z_s

execute store result entity @s data.StartData.Pose.Speed.Rotation float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_rot_speed
execute store result entity @s data.StartData.Pose.Speed.Hdbo float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_hdbo_speed
execute store result entity @s data.StartData.Pose.Speed.Arm float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_arm_speed
execute store result entity @s data.StartData.Pose.Speed.Leg float 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_leg_speed

# store previous Position
data modify entity @s data.StartData.Pos set from entity @e[tag=ani_sel_as,limit=1] Pos

# store previous Rotation
execute store result entity @s data.StartData.Pose.Rotation int 1 run scoreboard players get @e[tag=ani_sel_as,limit=1] ani_rot_s