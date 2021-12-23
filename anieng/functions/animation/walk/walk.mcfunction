# repeat init if speed is changed
execute unless score @s ani_walk_speed = @s ani_leg_speed run function anieng:animation/walk/walk_init

# part one walk animation
execute if entity @s[tag=ani_walk_pos] run function anieng:animation/walk/walk_pos
# part two walk animation
execute unless entity @s[tag=ani_walk_pos] run function anieng:animation/walk/walk_neg

# bind right to left, so that only one site have to be calculated
scoreboard players operation @s ani_rigt_leg_x_s = @s ani_left_leg_x
scoreboard players operation @s ani_rigt_leg_x_s *= -1 numbers
scoreboard players operation @s ani_right_leg_x = @s ani_rigt_leg_x_s
execute store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s ani_right_leg_x

# animate arms 
execute unless entity @s[tag=ani_walk_narm] run function anieng:animation/walk/walk_arm

execute if entity @s[tag=ani_time_walk] run function anieng:animation/walk/time_walk