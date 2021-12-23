# call as animation Armorstand
# constructs Pose and save into ani_out

# create storage
data merge storage ani_out {data:{Pose:{Head:[0f,0f,0f], Body:[0f,0f,0f], LeftArm:[0f,0f,0f], RightArm:[0f,0f,0f], LeftLeg:[0f,0f,0f], RightLeg:[0f,0f,0f]}}}

# store Rotation
execute store result storage ani_out data.Pose.Rotation float 1 run scoreboard players get @s ani_rot_s

# store Pose and Speed
execute store result storage ani_out data.Pose.Head[0] float 1 run scoreboard players get @s ani_head_x_s
execute store result storage ani_out data.Pose.Head[1] float 1 run scoreboard players get @s ani_head_y_s
execute store result storage ani_out data.Pose.Head[2] float 1 run scoreboard players get @s ani_head_z_s

execute store result storage ani_out data.Pose.Body[0] float 1 run scoreboard players get @s ani_body_x_s
execute store result storage ani_out data.Pose.Body[1] float 1 run scoreboard players get @s ani_body_y_s
execute store result storage ani_out data.Pose.Body[2] float 1 run scoreboard players get @s ani_body_z_s

execute store result storage ani_out data.Pose.LeftArm[0] float 1 run scoreboard players get @s ani_left_arm_x_s
execute store result storage ani_out data.Pose.LeftArm[1] float 1 run scoreboard players get @s ani_left_arm_y_s
execute store result storage ani_out data.Pose.LeftArm[2] float 1 run scoreboard players get @s ani_left_arm_z_s

execute store result storage ani_out data.Pose.RightArm[0] float 1 run scoreboard players get @s ani_rigt_arm_x_s
execute store result storage ani_out data.Pose.RightArm[1] float 1 run scoreboard players get @s ani_rigt_arm_y_s
execute store result storage ani_out data.Pose.RightArm[2] float 1 run scoreboard players get @s ani_rigt_arm_z_s

execute store result storage ani_out data.Pose.LeftLeg[0] float 1 run scoreboard players get @s ani_left_leg_x_s
execute store result storage ani_out data.Pose.LeftLeg[1] float 1 run scoreboard players get @s ani_left_leg_y_s
execute store result storage ani_out data.Pose.LeftLeg[2] float 1 run scoreboard players get @s ani_left_leg_z_s

execute store result storage ani_out data.Pose.RightLeg[0] float 1 run scoreboard players get @s ani_rigt_leg_x_s
execute store result storage ani_out data.Pose.RightLeg[1] float 1 run scoreboard players get @s ani_rigt_leg_y_s
execute store result storage ani_out data.Pose.RightLeg[2] float 1 run scoreboard players get @s ani_rigt_leg_z_s

execute store result storage ani_out data.Pose.Speed.Rotation int 1 run scoreboard players get @s ani_rot_speed
execute store result storage ani_out data.Pose.Speed.Hdbo int 1 run scoreboard players get @s ani_hdbo_speed
execute store result storage ani_out data.Pose.Speed.Arm int 1 run scoreboard players get @s ani_arm_speed
execute store result storage ani_out data.Pose.Speed.Leg int 1 run scoreboard players get @s ani_leg_speed