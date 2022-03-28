# @s: ani_act
# uses: manipulates @s ani_time_walk, manipulates Pose.RightLeg.X
# do: Executes walk by animate walk and teleport @s
# return: void

# if (walk_speed changed) walkInit()
execute unless score @s ani_walk_speed = @s ani_leg_speed run function anieng:animation/walk/main/init

# if (tag == walk_pos) animateWalkPos()
execute if entity @s[tag=ani_walk_pos] run function anieng:animation/walk/api/pos/walk

# else animateWalkNeg()
execute if entity @s[tag=!ani_walk_pos] run function anieng:animation/walk/api/neg/walk

# bind right leg to left leg, so that only one site have to be calculated
# Pose.RightLeg.X = right_leg_x_s = -1 * left_leg_x_s
scoreboard players operation @s ani_rigt_leg_x_s = @s ani_left_leg_x
scoreboard players operation @s ani_rigt_leg_x_s *= -1 numbers
scoreboard players operation @s ani_right_leg_x = @s ani_rigt_leg_x_s
execute store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s ani_right_leg_x

# if (narm) animateArms()
execute unless entity @s[tag=ani_walk_narm] run function anieng:animation/walk/api/arm/animate

# if (tag == time_walk) timeWalkTick()
execute if entity @s[tag=ani_time_walk] run function anieng:animation/walk/time_walk/tick