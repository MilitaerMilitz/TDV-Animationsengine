# set init score -> everything (body tiles and speeds) 0

execute unless score @s ani_walk_narm matches 0.. run scoreboard players set @s ani_walk_narm 0
execute unless score @s ani_walk_narm matches 0.. run scoreboard players set @s ani_walk_ntep 0
execute unless score @s ani_action matches 1.. run scoreboard players set @s ani_action 2
execute unless score @s ani_walk_speed matches 1.. run scoreboard players set @s ani_walk_speed 1

execute unless score @s ani_keyam matches 0.. run scoreboard players set @s ani_keyam 0
execute unless score @s ani_selkey matches 0.. run scoreboard players set @s ani_selkey 1
execute unless score @s ani_run matches 0.. run scoreboard players set @s ani_run 0

# actual scores
execute unless score @s ani_rot matches -2147483648.. run scoreboard players set @s ani_rot 0

execute unless score @s ani_head_x matches -2147483648.. run scoreboard players set @s ani_head_x 0
execute unless score @s ani_head_y matches -2147483648.. run scoreboard players set @s ani_head_y 0
execute unless score @s ani_head_z matches -2147483648.. run scoreboard players set @s ani_head_z 0

execute unless score @s ani_body_x matches -2147483648.. run scoreboard players set @s ani_body_x 0
execute unless score @s ani_body_y matches -2147483648.. run scoreboard players set @s ani_body_y 0
execute unless score @s ani_body_z matches -2147483648.. run scoreboard players set @s ani_body_z 0

execute unless score @s ani_left_arm_x matches -2147483648.. run scoreboard players set @s ani_left_arm_x 0
execute unless score @s ani_left_arm_y matches -2147483648.. run scoreboard players set @s ani_left_arm_y 0
execute unless score @s ani_left_arm_z matches -2147483648.. run scoreboard players set @s ani_left_arm_z 0

execute unless score @s ani_right_arm_x matches -2147483648.. run scoreboard players set @s ani_right_arm_x 0
execute unless score @s ani_right_arm_y matches -2147483648.. run scoreboard players set @s ani_right_arm_y 0
execute unless score @s ani_right_arm_z matches -2147483648.. run scoreboard players set @s ani_right_arm_z 0

execute unless score @s ani_left_leg_x matches -2147483648.. run scoreboard players set @s ani_left_leg_x 0
execute unless score @s ani_left_leg_y matches -2147483648.. run scoreboard players set @s ani_left_leg_y 0
execute unless score @s ani_left_leg_z matches -2147483648.. run scoreboard players set @s ani_left_leg_z 0

execute unless score @s ani_right_leg_x matches -2147483648.. run scoreboard players set @s ani_right_leg_x 0
execute unless score @s ani_right_leg_y matches -2147483648.. run scoreboard players set @s ani_right_leg_y 0
execute unless score @s ani_right_leg_z matches -2147483648.. run scoreboard players set @s ani_right_leg_z 0

#speed
execute unless score @s ani_hdbo_speed matches -2147483648.. run scoreboard players set @s ani_hdbo_speed 1
execute unless score @s ani_arm_speed matches -2147483648.. run scoreboard players set @s ani_arm_speed 1
execute unless score @s ani_leg_speed matches -2147483648.. run scoreboard players set @s ani_leg_speed 1
execute unless score @s ani_rot_speed matches -2147483648.. run scoreboard players set @s ani_rot_speed 1

# demand scores
execute unless score @s ani_rot_s matches -2147483648.. run scoreboard players set @s ani_rot_s 0

execute unless score @s ani_head_x_s matches -2147483648.. run scoreboard players set @s ani_head_x_s 0
execute unless score @s ani_head_y_s matches -2147483648.. run scoreboard players set @s ani_head_y_s 0
execute unless score @s ani_head_z_s matches -2147483648.. run scoreboard players set @s ani_head_z_s 0

execute unless score @s ani_body_x_s matches -2147483648.. run scoreboard players set @s ani_body_x_s 0
execute unless score @s ani_body_y_s matches -2147483648.. run scoreboard players set @s ani_body_y_s 0
execute unless score @s ani_body_z_s matches -2147483648.. run scoreboard players set @s ani_body_z_s 0

execute unless score @s ani_left_arm_x_s matches -2147483648.. run scoreboard players set @s ani_left_arm_x_s 0
execute unless score @s ani_left_arm_y_s matches -2147483648.. run scoreboard players set @s ani_left_arm_y_s 0
execute unless score @s ani_left_arm_z_s matches -2147483648.. run scoreboard players set @s ani_left_arm_z_s 0

execute unless score @s ani_rigt_arm_x_s matches -2147483648.. run scoreboard players set @s ani_rigt_arm_x_s 0
execute unless score @s ani_rigt_arm_y_s matches -2147483648.. run scoreboard players set @s ani_rigt_arm_y_s 0
execute unless score @s ani_rigt_arm_z_s matches -2147483648.. run scoreboard players set @s ani_rigt_arm_z_s 0

execute unless score @s ani_left_leg_x_s matches -2147483648.. run scoreboard players set @s ani_left_leg_x_s 0
execute unless score @s ani_left_leg_y_s matches -2147483648.. run scoreboard players set @s ani_left_leg_y_s 0
execute unless score @s ani_left_leg_z_s matches -2147483648.. run scoreboard players set @s ani_left_leg_z_s 0

execute unless score @s ani_rigt_leg_x_s matches -2147483648.. run scoreboard players set @s ani_rigt_leg_x_s 0
execute unless score @s ani_rigt_leg_y_s matches -2147483648.. run scoreboard players set @s ani_rigt_leg_y_s 0
execute unless score @s ani_rigt_leg_z_s matches -2147483648.. run scoreboard players set @s ani_rigt_leg_z_s 0

execute unless score @s ani_selkey matches -2147483648.. run scoreboard players add debug ani_selkey 1