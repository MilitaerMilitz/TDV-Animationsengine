# check if necessary scores are existent, if not it will create them new

# actual scores
execute unless score @s ani_rot matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_head_x matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_head_y matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_head_z matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_body_x matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_body_y matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_body_z matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_left_arm_x matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_left_arm_y matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_left_arm_z matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_right_arm_x matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_right_arm_y matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_right_arm_z matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_left_leg_x matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_left_leg_y matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_left_leg_z matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_right_leg_x matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_right_leg_y matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_right_leg_z matches -2147483648.. run function anieng:util/set_init_score

#speed
execute unless score @s ani_hdbo_speed matches 1.. run function anieng:util/set_init_score
execute unless score @s ani_arm_speed matches 1.. run function anieng:util/set_init_score
execute unless score @s ani_leg_speed matches 1.. run function anieng:util/set_init_score
execute unless score @s ani_rot_speed matches 1.. run function anieng:util/set_init_score

# demand scores
execute unless score @s ani_rot_s matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_head_x_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_head_y_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_head_z_s matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_body_x_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_body_y_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_body_z_s matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_left_arm_x_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_left_arm_y_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_left_arm_z_s matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_rigt_arm_x_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_rigt_arm_y_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_rigt_arm_z_s matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_left_leg_x_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_left_leg_y_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_left_leg_z_s matches -2147483648.. run function anieng:util/set_init_score

execute unless score @s ani_rigt_leg_x_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_rigt_leg_y_s matches -2147483648.. run function anieng:util/set_init_score
execute unless score @s ani_rigt_leg_z_s matches -2147483648.. run function anieng:util/set_init_score