# @s: no matter
# do: Is loaded when Datapack is loaded. It creates all scoreboards.
# return: void

function arr_math:setup

scoreboard objectives add ani_ram dummy
scoreboard objectives add ani_run dummy
scoreboard objectives add ani_vtout dummy

# interface
scoreboard objectives add ani_if_summand dummy

scoreboard objectives add ani_action dummy

scoreboard objectives add ani_if_sel_u0 dummy
scoreboard objectives add ani_if_sel_u1 dummy
scoreboard objectives add ani_if_sel_u2 dummy
scoreboard objectives add ani_if_sel_u3 dummy

scoreboard objectives add ani_walk_narm dummy
scoreboard objectives add ani_walk_pnarm dummy

scoreboard objectives add ani_walk_tbw dummy
scoreboard objectives add ani_walk_ptbw dummy

scoreboard objectives add ani_walk_ntep dummy
scoreboard objectives add ani_walk_pntep dummy

scoreboard objectives add ani_arwalk_rot dummy
scoreboard objectives add ani_arwalk_prot dummy

# Keyframe interface
scoreboard objectives add ani_keyam dummy
scoreboard objectives add ani_pkeyam dummy

scoreboard objectives add ani_selkey dummy
scoreboard objectives add ani_pselkey dummy

# Trigger External Engine data
scoreboard objectives add ani_tee_x dummy
scoreboard objectives add ani_tee_y dummy
scoreboard objectives add ani_tee_z dummy

scoreboard objectives add ani_ptee_x dummy
scoreboard objectives add ani_ptee_y dummy
scoreboard objectives add ani_ptee_z dummy

# numbers
scoreboard objectives add numbers dummy
scoreboard players set -1 numbers -1
scoreboard players set 2 numbers 2
scoreboard players set 7 numbers 7
scoreboard players set 360 numbers 360
scoreboard players set 180 numbers 180
scoreboard players set 1000 numbers 1000
scoreboard players set 1000000 numbers 1000000

# ist scores
scoreboard objectives add ani_rot dummy

scoreboard objectives add ani_head_x dummy
scoreboard objectives add ani_head_y dummy
scoreboard objectives add ani_head_z dummy

scoreboard objectives add ani_body_x dummy
scoreboard objectives add ani_body_y dummy
scoreboard objectives add ani_body_z dummy

scoreboard objectives add ani_left_arm_x dummy
scoreboard objectives add ani_left_arm_y dummy
scoreboard objectives add ani_left_arm_z dummy

scoreboard objectives add ani_right_arm_x dummy
scoreboard objectives add ani_right_arm_y dummy
scoreboard objectives add ani_right_arm_z dummy

scoreboard objectives add ani_left_leg_x dummy
scoreboard objectives add ani_left_leg_y dummy
scoreboard objectives add ani_left_leg_z dummy

scoreboard objectives add ani_right_leg_x dummy
scoreboard objectives add ani_right_leg_y dummy
scoreboard objectives add ani_right_leg_z dummy

# speed
scoreboard objectives add ani_hdbo_speed dummy
scoreboard objectives add ani_arm_speed dummy
scoreboard objectives add ani_leg_speed dummy
scoreboard objectives add ani_rot_speed dummy

# demand scores
scoreboard objectives add ani_rot_s dummy

scoreboard objectives add ani_head_x_s dummy
scoreboard objectives add ani_head_y_s dummy
scoreboard objectives add ani_head_z_s dummy

scoreboard objectives add ani_body_x_s dummy
scoreboard objectives add ani_body_y_s dummy
scoreboard objectives add ani_body_z_s dummy

scoreboard objectives add ani_left_arm_x_s dummy
scoreboard objectives add ani_left_arm_y_s dummy
scoreboard objectives add ani_left_arm_z_s dummy

scoreboard objectives add ani_rigt_arm_x_s dummy
scoreboard objectives add ani_rigt_arm_y_s dummy
scoreboard objectives add ani_rigt_arm_z_s dummy

scoreboard objectives add ani_left_leg_x_s dummy
scoreboard objectives add ani_left_leg_y_s dummy
scoreboard objectives add ani_left_leg_z_s dummy

scoreboard objectives add ani_rigt_leg_x_s dummy
scoreboard objectives add ani_rigt_leg_y_s dummy
scoreboard objectives add ani_rigt_leg_z_s dummy

# player selected scores
scoreboard objectives add ani_prot dummy

scoreboard objectives add ani_phead_x dummy
scoreboard objectives add ani_phead_y dummy
scoreboard objectives add ani_phead_z dummy

scoreboard objectives add ani_pbody_x dummy
scoreboard objectives add ani_pbody_y dummy
scoreboard objectives add ani_pbody_z dummy

scoreboard objectives add ani_pleft_arm_x dummy
scoreboard objectives add ani_pleft_arm_y dummy
scoreboard objectives add ani_pleft_arm_z dummy

scoreboard objectives add ani_pright_arm_x dummy
scoreboard objectives add ani_pright_arm_y dummy
scoreboard objectives add ani_pright_arm_z dummy

scoreboard objectives add ani_pleft_leg_x dummy
scoreboard objectives add ani_pleft_leg_y dummy
scoreboard objectives add ani_pleft_leg_z dummy

scoreboard objectives add ani_pright_leg_x dummy
scoreboard objectives add ani_pright_leg_y dummy
scoreboard objectives add ani_pright_leg_z dummy

# player selected speed scores
scoreboard objectives add ani_phdbo_speed dummy
scoreboard objectives add ani_parm_speed dummy
scoreboard objectives add ani_pleg_speed dummy
scoreboard objectives add ani_prot_speed dummy

# walk engine
scoreboard objectives add ani_walk_speed dummy
scoreboard objectives add ani_pwalk_speed dummy

scoreboard objectives add ani_pwalk_x dummy
scoreboard objectives add ani_pwalk_y dummy
scoreboard objectives add ani_pwalk_z dummy

scoreboard objectives add ani_time_walk dummy
scoreboard objectives add ani_ptime_walk dummy