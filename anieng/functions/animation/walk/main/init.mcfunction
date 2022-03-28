# call as animation Armorstand

# tag management
tag @s add ani_walk
tag @s add ani_walk_pos
tag @s remove ani_walk_init

# mark action running
scoreboard players set @s ani_run 1

# initialize walk speed
execute unless score @s ani_walk_speed matches 0..6 run scoreboard players set @s ani_walk_speed 1

# initialize arms
execute unless entity @s[tag=ani_walk_narm] run function anieng:animation/walk/api/arm/set_init_position

# initialize legs
scoreboard players operation @s ani_leg_speed = @s ani_walk_speed
scoreboard players set @s ani_left_leg_y_s 0
scoreboard players set @s ani_left_leg_z_s 0
scoreboard players set @s ani_rigt_leg_y_s 0
scoreboard players set @s ani_rigt_leg_z_s 0