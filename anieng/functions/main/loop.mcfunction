# check scores und resets all if something is non existent
function anieng:util/check_scores

# glowing of selected Armorstands
execute as @e[tag=ani_glow,type=armor_stand] run effect give @s glowing 1 1 true

# move engine
execute unless score @s ani_rot_s = @s ani_rot run function anieng:animation/move/rotate

execute unless score @s ani_head_x_s = @s ani_head_x run function anieng:animation/move/head_x
execute unless score @s ani_head_y_s = @s ani_head_y run function anieng:animation/move/head_y
execute unless score @s ani_head_z_s = @s ani_head_z run function anieng:animation/move/head_z

execute unless score @s ani_body_x_s = @s ani_body_x run function anieng:animation/move/body_x
execute unless score @s ani_body_y_s = @s ani_body_y run function anieng:animation/move/body_y
execute unless score @s ani_body_z_s = @s ani_body_z run function anieng:animation/move/body_z

execute unless score @s ani_left_arm_x_s = @s ani_left_arm_x run function anieng:animation/move/left_arm_x
execute unless score @s ani_left_arm_y_s = @s ani_left_arm_y run function anieng:animation/move/left_arm_y
execute unless score @s ani_left_arm_z_s = @s ani_left_arm_z run function anieng:animation/move/left_arm_z

execute unless score @s ani_rigt_arm_x_s = @s ani_right_arm_x run function anieng:animation/move/right_arm_x
execute unless score @s ani_rigt_arm_y_s = @s ani_right_arm_y run function anieng:animation/move/right_arm_y
execute unless score @s ani_rigt_arm_z_s = @s ani_right_arm_z run function anieng:animation/move/right_arm_z

execute unless score @s ani_left_leg_x_s = @s ani_left_leg_x run function anieng:animation/move/left_leg_x
execute unless score @s ani_left_leg_y_s = @s ani_left_leg_y run function anieng:animation/move/left_leg_y
execute unless score @s ani_left_leg_z_s = @s ani_left_leg_z run function anieng:animation/move/left_leg_z

execute unless score @s ani_rigt_leg_x_s = @s ani_right_leg_x run function anieng:animation/move/right_leg_x
execute unless score @s ani_rigt_leg_y_s = @s ani_right_leg_y run function anieng:animation/move/right_leg_y
execute unless score @s ani_rigt_leg_z_s = @s ani_right_leg_z run function anieng:animation/move/right_leg_z

# walk engine
execute if entity @s[tag=ani_walk_init] run function anieng:animation/walk/walk_init
execute if entity @s[tag=ani_walk,tag=!ani_walk_stop] run function anieng:animation/walk/walk
execute if entity @s[tag=ani_walk_end] run function anieng:animation/walk/walk_end

execute if entity @s[tag=ani_trader_walk,tag=ani_trader_walk_init] run tag @s remove ani_trader_walk_init
execute if entity @s[tag=ani_trader_walk_init] run function anieng:animation/walk/trader_walk/trader_walk_init
execute if entity @s[tag=ani_trader_walk] run function anieng:animation/walk/trader_walk/trader_walk
execute if entity @s[tag=ani_trader_walk_end] run function anieng:animation/walk/trader_walk/trader_walk_end
execute as @e[type=wandering_trader,tag=ani_trader] at @s run function anieng:animation/walk/trader_walk/trader_loop

execute if entity @s[tag=ani_rot_walk_init] run function anieng:animation/walk/align_walk/rot_walk_init
execute if entity @s[tag=ani_rot_walk_rot] if score @s ani_rot = @s ani_rot_s run tag @s add ani_align_walk

execute if entity @s[tag=ani_align_walk_init] run function anieng:animation/walk/align_walk/align_walk
execute if entity @s[tag=ani_align_walk] run function anieng:animation/walk/align_walk/align_walk
execute if entity @s[tag=ani_align_walk_end] run function anieng:animation/walk/align_walk/align_walk_end
