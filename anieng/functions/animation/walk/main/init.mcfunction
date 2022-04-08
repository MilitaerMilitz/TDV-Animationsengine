# @s: ani_act
# manipulates: Pose.Legs
# manipulates: Pose.Arms if tag=!ani_walk_narm
# do: Initialize walking
# return: void

# tag management
tag @s add ani_walk
tag @s add ani_walk_pos
tag @s remove ani_walk_init

# actionRunning = true
scoreboard players set @s ani_run 1

# if (walk_speed != 0..6) walk_speed = 1
execute unless score @s ani_walk_speed matches 0..6 run scoreboard players set @s ani_walk_speed 1

# if (tag != walk_narm) initArmPosition()
execute if entity @s[tag=!ani_walk_narm] run function anieng:animation/walk/api/arm/set_init_position

# initLegPosition()
scoreboard players operation @s ani_leg_speed = @s ani_walk_speed
scoreboard players set @s ani_left_leg_y_s 0
scoreboard players set @s ani_left_leg_z_s 0
scoreboard players set @s ani_rigt_leg_y_s 0
scoreboard players set @s ani_rigt_leg_z_s 0