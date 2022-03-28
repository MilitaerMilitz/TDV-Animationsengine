# check scores und resets all if something is non existent
function anieng:util/set_init_score_if_unset

# find all needed entities
tag @s add ani_sel_as
function anieng:util/find_tiles_from_act

#execute as @e[tag=ani_sel_body] run scoreboard players add body ani_ram 1
#execute as @e[tag=ani_sel_head] run scoreboard players add head ani_ram 1
#execute as @e[tag=ani_sel_data] run scoreboard players add data ani_ram 1

# exist check ani_act and ani_data are one unit, if one of them is killed the other part will vanish too.
execute if score @s ani_vtout matches 1.. run scoreboard players remove @s ani_vtout 1
execute if score @s ani_vtout matches ..0 run scoreboard players reset @s ani_vtout
execute unless score @s ani_vtout matches -10.. run function anieng:main/vanish_check

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
execute if entity @s[tag=ani_walk_init] run function anieng:animation/walk/main/init
execute if entity @s[tag=ani_walk,tag=!ani_walk_stop] run function anieng:animation/walk/main/walk
execute if entity @s[tag=ani_walk_end] run function anieng:animation/walk/main/end

execute if entity @s[tag=ani_trader_walk,tag=ani_trader_walk_init] run tag @s remove ani_trader_walk_init
execute if entity @s[tag=ani_trader_walk_init] run function anieng:animation/walk/trader_walk/trader_walk_init
execute if entity @s[tag=ani_trader_walk] run function anieng:animation/walk/trader_walk/trader_walk
execute if entity @s[tag=ani_trader_walk_end] run function anieng:animation/walk/trader_walk/trader_walk_end
execute as @e[type=wandering_trader,tag=ani_trader] at @s run function anieng:animation/walk/trader_walk/trader_loop

execute if entity @s[tag=ani_rot_walk_init] run function anieng:animation/walk/rot_walk/init
execute if entity @s[tag=ani_rot_walk_rot] if score @s ani_rot = @s ani_rot_s run tag @s add ani_align_walk

execute if entity @s[tag=ani_align_walk_init] run function anieng:animation/walk/align_walk/align_walk
execute if entity @s[tag=ani_align_walk] run function anieng:animation/walk/align_walk/align_walk
execute if entity @s[tag=ani_align_walk_end] run function anieng:animation/walk/align_walk/end

# ani_play
execute if entity @s[tag=ani_play,scores={ani_run=0}] unless score @s ani_selkey <= @s ani_keyam run function anieng:play/play_end
execute if entity @s[tag=ani_play] if score @s ani_selkey <= @s ani_keyam run function anieng:play/check_and_play
execute if entity @s[tag=ani_play,tag=ani_play_one] run function anieng:play/play_end

# head/body
function anieng:main/tile_loop

# clear()
tag @s remove ani_sel_as
tag @e[tag=ani_sel_data] remove ani_sel_data
tag @e[tag=ani_sel_body] remove ani_sel_body
tag @e[tag=ani_sel_head] remove ani_sel_head